class Tab_ControlSettings extends GUITabPanel;

struct KeyBinding
{
	var 			bool 			bIsSectionLabel;
    var localized	string 			KeyLabel;
	var				string 			Alias;
	var 			array<int>		Binds;
	var				array<string>	BindKeyNames;
	var				array<string>	BindLocalizedKeyNames;
};

var GUIListBox	MyListBox;
var Color		BkColor;

const DefaultBindings=54;		// # of default bindings there are

var array<KeyBinding> Bindings;	// Holds the array of key bindings
var localized string  Labels[54];		// fixed-length array for localization.  accesses clamped to [0,74]

var bool bSetNextKeyPress;
var	int	 NewIndex, NewSubIndex;
var GUIStyles SelStyle;

var int row, HackIndex;	// Hacky Hacky

var localized string Header,Footer;
var float SectionLabelMargin;
var bool bListInitialised;

function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
	Super.Initcomponent(MyController, MyOwner);

	MyListBox = GUIListBox(Controls[0]);
	MyListBox.List.OnDrawItem = DrawBinding;
	MyListBox.List.SelectedBkColor = BkColor;
	MyListBox.List.SelectedImage=None;
	MyListbox.List.OnClick=GetNewKey;
	MyListBox.List.OnChange=ListChange;
	MyListBox.List.OnKeyEvent = ListOnKeyEvent;
	MyListBox.List.bHotTrack=true;
	MyListBox.List.OnClickSound=CS_None;
	MyListBox.List.OnAdjustTop = MyOnAdjustTop;

	SelStyle = Controller.GetStyle("RoundButton");
}

function ShowPanel(bool bShow)
{
	Super.ShowPanel(bShow);

	if(bShow)
	{
		if(!bListInitialised)
		{
			InitBindings();

			MyListBox.List.Index=1;
			HackIndex=1;

			bListInitialised = true;
		}
	}
}

function int Weight(int i)
{
	if ( (i==0x01) || (i==0x02) )
		return 100;

	if ( (i>=0x30) && (i<=0x5A) )
		return 50;

	if (i==0x20)
		return 45;

	if (i==0x04)
		return 40;

	if (i==0xEC || i==0xED)
		return 35;

	if (i>=0x21 && i<=0x28)
		return 30;

	if (i>=0x60 && i<=0x6F)
		return 30;

	return 25;
}

function Swap(int index, int a, int b)
{
	local int TempInt;
	local string TempStrA, TempStrB;

	TempInt  = Bindings[Index].Binds[a];
	TempStrA = Bindings[Index].BindKeyNames[a];
	TempStrB = Bindings[Index].BindLocalizedKeyNames[a];

	Bindings[Index].Binds[a] = Bindings[Index].Binds[B];
	Bindings[Index].BindKeyNames[a] = Bindings[Index].BindKeyNames[b];
	Bindings[Index].BindLocalizedKeyNames[a] = Bindings[Index].BindLocalizedKeyNames[b];

	Bindings[Index].Binds[b] = TempInt;
	Bindings[Index].BindKeyNames[b] = TempStrA;
	Bindings[Index].BindLocalizedKeyNames[b] = TempStrB;
}


function AddToBindings(string Alias, string KeyLabel, bool bSectionLabel)
{
	local int At;

    At = Bindings.Length;
    Bindings.Length = Bindings.Length + 1;

    Bindings[At].bIsSectionLabel = bSectionLabel;
    Bindings[At].KeyLabel = KeyLabel;
    Bindings[At].Alias = Alias;

	MyListBox.List.Add(Bindings[At].KeyLabel);


}

function InitBindings()
{
	local int i,j,k,index;
	local string KeyName, Alias, LocalizedKeyName;
    local string UserKeyClass;

    local class<GUIUserKeyBinding> Key;

	// Clear them all.
	MyListBox.List.Clear(); // Fix by Martin Robaszewski added by ' Studios (Runtime)

	for (i=0;i<Bindings.Length;i++)
	{
		if (Bindings[i].Binds.Length>0)
			Bindings[i].Binds.Remove(0,Bindings[i].Binds.Length);

		if (Bindings[i].BindKeyNames.Length>0)
			Bindings[i].BindKeyNames.Remove(0,Bindings[i].BindKeyNames.Length);

		if (Bindings[i].BindLocalizedKeyNames.Length>0)
			Bindings[i].BindLocalizedKeyNames.Remove(0,Bindings[i].BindLocalizedKeyNames.Length);

		// Set the Localized name

    	if (i<DefaultBindings)
        	Bindings[i].KeyLabel = Labels[i];

		MyListBox.List.Add(Bindings[i].KeyLabel);

	}

    // Load Bindings from INT

	j = 0;
    UserKeyClass = PlayerOwner().Level.GetNextInt("GUI.GUIUserKeyBinding",j++);

    while (UserKeyClass!="")
    {
		Key = class<GUIUserKeyBinding>(DynamicLoadObject(UserKeyClass,class'Class'));
        if (Key!=None)
		{
        	for (i=0;i<Key.Default.KeyData.Length;i++)
            	AddToBindings(Key.Default.KeyData[i].Alias,Key.Default.KeyData[i].KeyLabel,Key.Default.KeyData[i].bIsSection);
        }
	    UserKeyClass = PlayerOwner().Level.GetNextInt("GUI.GUIUserKeyBinding",j++);
    }

	for (i=0;i<255;i++)
	{
		KeyName = PlayerOwner().ConsoleCommand("KEYNAME"@i);
		LocalizedKeyName = PlayerOwner().ConsoleCommand("LOCALIZEDKEYNAME"@i);
		if (KeyName!="")
		{
			Alias = PlayerOwner().ConsoleCommand("KEYBINDING"@KeyName);
			if (Alias!="")
			{
				for (j=0;j<Bindings.Length;j++)
				{
					if (Bindings[j].Alias ~= Alias)
					{
						index = Bindings[j].Binds.Length;

						Bindings[j].Binds[index] = i;
//						Bindings[j].KeyLabel = Labels[Clamp(j,0,74)];
						Bindings[j].BindKeyNames[Index] = KeyName;
						Bindings[j].BindLocalizedKeyNames[Index] = LocalizedKeyName;

						for (k=0;k<index;k++)
						{
							if ( Weight(Bindings[j].Binds[k]) < Weight(Bindings[j].Binds[Index]) )
							{
								Swap(j,k,Index);
								break;
							}
						}
					}
				}
			}
		}
	}
}

function string GetCurrentKeyBind(int index, int bind)
{

	if ( index >= bindings.Length )
		return "";

	if (Bindings[Index].bIsSectionLabel)
		return "";

	if (Index==NewIndex && Bind==NewSubIndex)
		return "???";

	if (Bind>=Bindings[Index].Binds.Length)
		return "";

	return Bindings[Index].BindLocalizedKeyNames[Bind];
}

function DrawBinding(Canvas Canvas, int Item, float X, float Y, float W, float H, bool bSelected)
{
	local int x1,w1;
	local bool InBindArea;

    if (Item>=Bindings.Length)
    	return;

	if (Controller.MouseX >= controls[2].Bounds[0] && Controller.MouseX <=Controls[3].Bounds[2])
	{
		InBindArea=true;
	}

	if ( (Controller.HasMouseMoved()) && (!bSetNextKeyPress) )
	{
		if (InBindArea)
		{
			if ( ( Controller.MouseX >= Controls[2].Bounds[0] ) && ( Controller.MouseX <= Controls[2].Bounds[2] ) )
				Row = 0;
			else if ( (Controller.MouseX>=Controls[3].Bounds[0]) && (Controller.MouseX<=Controls[3].Bounds[2]) )
				Row = 1;
			InBindArea=true;
		}
		if ( InBindArea && (MyListBox.List.Index != HackIndex) && (MyListBox.List.Index<Bindings.Length) && MyListBox.List.Index != -1 && (Bindings[MyListBox.List.Index].bIsSectionLabel) ) // Changed by Demiurge (Runtime)
		{
			MyListBox.List.SetIndex(HackIndex);
		}
	}

	if(InBindArea)
	{
		if ( (bSetNextKeyPress) && (MyListBox.List.Index!=HackIndex) )
		{
			MyListBox.List.SetIndex(HackIndex);
		}

		if ( HackIndex !=MyListBox.List.Index)
		{
			UpdateHint(MyListBox.List.Index);
		}

		HackIndex = MyListBox.List.Index;
	}

	if ( Bindings[Item].bIsSectionLabel )
	{
		Canvas.CurX = Controls[1].ClientBounds[0]+3;
		Canvas.CurY = Y;
		Canvas.SetDrawColor(24,24,74,200);
		Canvas.DrawTile(Controller.DefaultPens[0],Controls[1].ClientBounds[2]-Controls[1].ClientBounds[0]-6,H,0,0,1,1);
		MyListBox.Style.DrawText(Canvas, MSAT_Pressed, Controls[1].ClientBounds[0]+SectionLabelMargin, Y, Controls[1].ClientBounds[2]-Controls[1].ClientBounds[0] ,H, TXTA_Left, Bindings[Item].KeyLabel);
	}
	else
	{
		MyListBox.Style.DrawText(Canvas,MenuState, Controls[1].ActualLeft(), Y, Controls[1].ActualWidth(), H, TXTA_Center, Bindings[Item].KeyLabel);
	}

	MyListBox.Style.DrawText(Canvas,MenuState, Controls[2].ActualLeft(), Y, Controls[2].ActualWidth(), H, TXTA_Center, GetCurrentKeyBind(Item,0));
	MyListBox.Style.DrawText(Canvas,MenuState, Controls[3].ActualLeft(), Y, Controls[3].ActualWidth(), H, TXTA_Center, GetCurrentKeyBind(Item,1));

	if ( (bSelected) && (!Bindings[item].bIsSectionLabel) )
	{
		if (Row==0)
		{
			x1 = Controls[2].ActualLeft();
			w1 = Controls[2].ActualWidth();
		}
		else if (Row==1)
		{
			x1 = Controls[3].ActualLeft();
			w1 = Controls[3].ActualWidth();
		}

		if (!bSetNextKeyPress)
			SelStyle.Draw(Canvas,MSAT_Watched, x1, y, w1, h );
		else
			SelStyle.Draw(Canvas,MSAT_Pressed, x1, y, w1, h );


		UpdateHint(Item);
	}
}

function bool ListOnKeyEvent(out byte Key, out byte State, float delta)
{
	local bool result;
	local int oldIndex;

	if (Key==0x0D && State==3)
	{
		GetNewKey(None);
		return true;
	}

	if ( (Key==0x08) && (State==3) )	// Backsapce
	{
		// Clear Over

		if ( ( Controller.MouseX >= Controls[2].Bounds[0] ) && ( Controller.MouseX <= Controls[2].Bounds[2] ) )
			RemoveExistingKey(MyListBox.List.Index,0);

		else if ( (Controller.MouseX>=Controls[3].Bounds[0]) && (Controller.MouseX<=Controls[3].Bounds[2]) )
			RemoveExistingKey(MyListBox.List.Index,1);


		UpdateHint(MyListBox.List.Index);

		return true;
	}


	// -- WARNING.. really big hack here

	if ( (State==1) && (Key==0x25 || Key==0x64 || Key==0x27 || Key ==0x66) )
	{
		if (row==0)
			row = 1;
		else
			row = 0;

		UpdateHint(MyListBox.List.Index);
		return true;
	}


	OldIndex = MyListBox.List.Index;
	result = MyListBox.List.InternalOnKeyEvent(Key,State,delta);
	if (MyListBox.List.Index!=OldIndex)
	{

		if (Bindings[MyListBox.List.Index].bIsSectionLabel)
		{
			if (MyListBox.List.Index<OldIndex)
				SearchUp(OldIndex);
			else
				SearchDown(OldIndex);
		}
	}
	UpdateHint(MyListBox.List.Index);

}

function SearchUp(int OldIndex)
{
	local int cindex;

	cindex = MyListBox.List.Index;
	while (cindex>0)
	{
		if (!Bindings[cindex].bIsSectionLabel)
		{
			MyListBox.List.SetIndex(cIndex);
			return;
		}
		cindex--;
	}
	MyListBox.List.SetIndex(OldIndex);
}

function SearchDown(int OldIndex)
{
	local int cindex;

	cindex = MyListBox.List.Index;
	while (cindex<MyListBox.List.ItemCount-1)
	{
		if (!Bindings[cindex].bIsSectionLabel)
		{
			MyListBox.List.SetIndex(cIndex);
			return;
		}
		cindex++;
	}
	MyListBox.List.SetIndex(OldIndex);
}



function RemoveExistingKey(int Index, int SubIndex)
{

	if ( (Index>=Bindings.Length) || (SubIndex>=Bindings[Index].Binds.Length) || (Bindings[Index].Binds[SubIndex] <0) )
		return;

	// Clear the bind

	PlayerOwner().ConsoleCommand("SET Input"@Bindings[Index].BindKeyNames[SubIndex]);

	// Clear the entry

	Bindings[Index].Binds.Remove(SubIndex,1);
	Bindings[Index].BindKeyNames.Remove(SubIndex,1);
	Bindings[Index].BindLocalizedKeyNames.Remove(SubIndex,1);
}

function RemoveAllOccurance(byte NewKey)
{
	local int i,j;

	for (i=0;i<Bindings.Length;i++)
	{
		for (j=Bindings[i].Binds.Length-1;j>=0;j--)
		{
			if (Bindings[i].Binds[j]==NewKey)
			{
				RemoveExistingKey(i,j);
			}
		}
	}

}

function UpdateHint(int index)
{
	local int i;
	local string t;

    if (Index<0 || Index>=Bindings.Length)
    {
    	MyListBox.List.Hint ="";
		Controller.ActivePage.ChangeHint(MyListBox.List.Hint);
        return;
	}
    else
    {
	    t = "";
	    for (i=0;i<Bindings[Index].Binds.Length;i++)
	    {
	        if (t=="")
	            t = ""$GetCurrentKeyBind(Index,i);
	        else
	            t = t$", "$GetCurrentKeyBind(Index,i);
	    }
    }
	MyListBox.List.Hint =Header$t$Footer;
	Controller.ActivePage.ChangeHint(MyListBox.List.Hint);
}

function AddNewKey(int Index, int SubIndex, byte NewKey)
{
	if (Index >= Bindings.Length || Index < 0) // Changed by Demiurge (Runtime)
		return;

	if ( (SubIndex<Bindings[Index].Binds.Length) && (Bindings[Index].Binds[SubIndex] == NewKey) )
		return;

	RemoveAllOccurance(NewKey);

	if (SubIndex>=Bindings[Index].Binds.Length)
	{
		Bindings[Index].Binds.Length = Bindings[Index].Binds.Length + 1;
		Bindings[Index].BindKeyNames.Length = Bindings[Index].BindKeyNames.Length + 1;
		Bindings[Index].BindLocalizedKeyNames.Length = Bindings[Index].BindLocalizedKeyNames.Length + 1;
		SubIndex = Bindings[Index].Binds.Length-1;
	}
	Bindings[Index].Binds[SubIndex] = NewKey;
	Bindings[Index].BindKeyNames[SubIndex] = PlayerOwner().ConsoleCommand("KeyName"@NewKey);
	Bindings[Index].BindLocalizedKeyNames[SubIndex] = PlayerOwner().ConsoleCommand("LOCALIZEDKEYNAME"@NewKey);
	PlayerOwner().ConsoleCommand("SET Input"@Bindings[Index].BindKeyNames[SubIndex]@Bindings[Index].Alias);

	UpdateHint(Index);

}

function bool GetNewKey(GUIComponent Sender)
{
	local int SubIndex;

	if ( ( Controller.MouseX >= Controls[2].Bounds[0] ) && ( Controller.MouseX <= Controls[2].Bounds[2] ) )
		SubIndex = 0;
	else if ( (Controller.MouseX>=Controls[3].Bounds[0]) && (Controller.MouseX<=Controls[3].Bounds[2]) )
		SubIndex = 1;
	else
		return true;

	NewIndex = MyListBox.List.Index;
	NewSubIndex = SubIndex;
	bSetNextKeyPress=true;
	Controller.OnNeedRawKeyPress = RawKey;
    Controller.Master.bRequireRawJoystick=true;

	PlayerOwner().ClientPlaySound(Controller.EditSound);
	PlayerOwner().ConsoleCommand("toggleime 0");

	return true;
}

function bool RawKey(byte NewKey)
{

	if (NewKey!=0x1B)
		AddNewKey(NewIndex, NewSubIndex, NewKey);

	NewIndex = -1;
	NewSubIndex = -1;

	bSetNextKeyPress=false;
	Controller.OnNeedRawKeyPress = none;
    Controller.Master.bRequireRawJoystick=false;

	PlayerOwner().ClientPlaySound(Controller.ClickSound);

	return true;

}

function ListChange(GUIComponent Sender)
{
	UpdateHint(MyListBox.List.Index);
}

function MyOnAdjustTop(GUIComponent Sender)
{
	if( MyListBox.List.Index < MyListBox.List.Top )
		MyListBox.List.SetIndex( MyListBox.List.Top );
	else if( MyListBox.List.Index >= MyListBox.List.Top + MyListBox.List.ItemsPerPage )
		MyListBox.List.SetIndex( MyListBox.List.Top + MyListBox.List.ItemsPerPage );
}

function bool ResetClicked(GUIComponent Sender)
{
	Controller.ResetKeyboard();
	InitBindings();
	return true;
}

defaultproperties
{
     BkColor=(B=100,G=24,R=24,A=200)
     Bindings(0)=(bIsSectionLabel=True,KeyLabel="Movement")
     Bindings(1)=(KeyLabel="Forwards",Alias="MoveForward")
     Bindings(2)=(KeyLabel="Backwards",Alias="MoveBackward")
     Bindings(3)=(KeyLabel="Sidestep Left",Alias="StrafeLeft")
     Bindings(4)=(KeyLabel="Sidestep Right",Alias="StrafeRight")
     Bindings(5)=(KeyLabel="Jump",Alias="Jump")
     Bindings(6)=(KeyLabel="Walk",Alias="Walking")
     Bindings(7)=(KeyLabel="Crouch",Alias="Duck")
     Bindings(8)=(KeyLabel="Sidestep Toggle",Alias="Strafe")
     Bindings(9)=(bIsSectionLabel=True,KeyLabel="Looking")
     Bindings(10)=(KeyLabel="Turn Left",Alias="TurnLeft")
     Bindings(11)=(KeyLabel="Turn Right",Alias="TurnRight")
     Bindings(12)=(KeyLabel="Look Up",Alias="LookUp")
     Bindings(13)=(KeyLabel="Look Down",Alias="LookDown")
     Bindings(14)=(KeyLabel="Center View",Alias="CenterView")
     Bindings(15)=(bIsSectionLabel=True,KeyLabel="Communication")
     Bindings(16)=(KeyLabel="Say",Alias="Talk")
     Bindings(17)=(KeyLabel="Team Say",Alias="TeamTalk")
     Bindings(18)=(KeyLabel="Speech Menu",Alias="SpeechMenuToggle")
     Bindings(19)=(bIsSectionLabel=True,KeyLabel="Hud")
     Bindings(20)=(KeyLabel="Grow Hud",Alias="GrowHud")
     Bindings(21)=(KeyLabel="Shrink Hud",Alias="ShrinkHud")
     Bindings(22)=(bIsSectionLabel=True,KeyLabel="Miscellaneous")
     Bindings(23)=(KeyLabel="Pause",Alias="Pause")
     Bindings(24)=(KeyLabel="Screenshot",Alias="shot")
     Bindings(25)=(KeyLabel="Menu",Alias="ShowMenu")
     Bindings(26)=(KeyLabel="In Runtime Chat",Alias="InGameChat")
     Bindings(27)=(KeyLabel="Server Info",Alias="ServerInfo")
     Labels(0)="Movement"
     Labels(1)="Forwards"
     Labels(2)="Backwards"
     Labels(3)="Sidestep Left"
     Labels(4)="Sidestep Right"
     Labels(5)="Jump"
     Labels(6)="Walk"
     Labels(7)="Crouch"
     Labels(8)="Sidestep Toggle"
     Labels(9)="Looking"
     Labels(10)="Turn Left"
     Labels(11)="Turn Right"
     Labels(12)="Look Up"
     Labels(13)="Look Down"
     Labels(14)="Center View"
     Labels(15)="Communication"
     Labels(16)="Say"
     Labels(17)="Team Say"
     Labels(18)="Speech Menu"
     Labels(19)="Hud"
     Labels(20)="Grow Hud"
     Labels(21)="Shrink Hud"
     Labels(22)="Miscellaneous"
     Labels(23)="Pause"
     Labels(24)="Screenshot"
     Labels(25)="Menu"
     Labels(26)="In Runtime Chat"
     Labels(27)="Server Info"
     Header="["
     Footer="] Perform this action "
     SectionLabelMargin=10.000000
     Controls(0)=GUIListBox'RTInterface.Tab_ControlSettings.KeyConfigKeyList'
     Controls(1)=GUIImage'RTInterface.Tab_ControlSettings.KeyConfigBK1'
     Controls(2)=GUIImage'RTInterface.Tab_ControlSettings.KeyConfigBK2'
     Controls(3)=GUIImage'RTInterface.Tab_ControlSettings.KeyConfigBK3'
     Controls(4)=GUILabel'RTInterface.Tab_ControlSettings.KeyConfigAliasLabel'
     Controls(5)=GUILabel'RTInterface.Tab_ControlSettings.KeyConfigAliasLabel2'
     Controls(6)=GUILabel'RTInterface.Tab_ControlSettings.KeyConfigAliasLabel3'
     Controls(7)=GUIButton'RTInterface.Tab_ControlSettings.KeyResetButton'
     WinTop=0.150000
     WinHeight=0.740000
}
