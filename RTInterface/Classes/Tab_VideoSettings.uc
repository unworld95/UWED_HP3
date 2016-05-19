class Tab_VideoSettings extends GUITabPanel;

#exec OBJ LOAD FILE=GUIContent.utx

var		bool ShowSShot;

struct DisplayMode
{
	var int	Width,
			Height;
};

var DisplayMode DisplayModes[14];

var localized string	BitDepthText[2];

function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
	local int i;
	Super.Initcomponent(MyController, MyOwner);

	for (i=0;i<Controls.Length;i++)
		Controls[i].OnChange=InternalOnChange;

	moComboBox(Controls[1]).AddItem(BitDepthText[0]);
	moComboBox(Controls[1]).AddItem(BitDepthText[1]);
	moComboBox(Controls[1]).ReadOnly(true);
	
	CheckSupportedResolutions();
	
	Controls[6].FriendlyLabel  = GUILabel(Controls[5]);
	Controls[8].FriendlyLabel  = GUILabel(Controls[7]);
	Controls[10].FriendlyLabel = GUILabel(Controls[9]);
	
}

function CheckSupportedResolutions()
{
	local int		HighestRes;
	local int		Index;
	local int		BitDepth;
	local string	CurrentSelection;

	CurrentSelection = moComboBox(Controls[0]).MyComboBox.Edit.GetText();
	if(moComboBox(Controls[0]).ItemCount() > 0)
	moComboBox(Controls[0]).RemoveItem(0,moComboBox(Controls[0]).ItemCount());

	if(moComboBox(Controls[1]).GetText()==BitDepthText[0])
		BitDepth = 16;
	else
		BitDepth = 32;

	// Don't let user create non-fullscreen window bigger than highest
	//  supported resolution, or MacOS X client crashes. --ryan.
	if(!moCheckBox(Controls[2]).IsChecked()) // Controls[2] == fs toggle.
	{
		HighestRes = 0;
		for(Index = 0;Index < ArrayCount(DisplayModes);Index++)
		{
			if (PlayerOwner().ConsoleCommand(
					"SupportedResolution"$
					" WIDTH="$DisplayModes[Index].Width$
					" HEIGHT="$DisplayModes[Index].Height$
					" BITDEPTH="$BitDepth) == "1")
			{
				HighestRes = Index;   // biggest resolution hardware supports.
			}
		}

		for(Index = 0;Index <= HighestRes;Index++)
		{
			moComboBox(Controls[0]).AddItem(DisplayModes[Index].Width$"x"$DisplayModes[Index].Height);
		}
	}

	else  // Set dropdown for fullscreen modes...
	{
		for(Index = 0;Index < ArrayCount(DisplayModes);Index++)
		{
			if (PlayerOwner().ConsoleCommand(
				"SupportedResolution"$
				" WIDTH="$DisplayModes[Index].Width$
				" HEIGHT="$DisplayModes[Index].Height$
				" BITDEPTH="$BitDepth) == "1")
			{
				moComboBox(Controls[0]).AddItem(DisplayModes[Index].Width$"x"$DisplayModes[Index].Height);
			}
		}
    }

	moComboBox(Controls[0]).SetText(CurrentSelection);
}

function Refresh()
{
	InternalOnLoadINI(Controls[0],"");
	InternalOnLoadINI(Controls[1],"");
	InternalOnLoadINI(Controls[2],"");
}
	
function InternalOnLoadINI(GUIComponent Sender, string s)
{
	local string temp;

	if (Sender==Controls[0])
	{
		// Resolution
		if(Controller.GameResolution != "")
			moComboBox(Controls[0]).SetText(Controller.GameResolution);
		else
			moComboBox(Controls[0]).SetText(Controller.GetCurrentRes());
	}
	if (Sender==Controls[1])
	{
		if (PlayerOwner().ConsoleCommand("get ini:Engine.Engine.RenderDevice Use16bit") ~= "true")
			moComboBox(Sender).SetText(BitDepthText[0]);
		else
			moComboBox(Sender).SetText(BitDepthText[1]);

		CheckSupportedResolutions();
	}
	else if (Sender==Controls[2])
	{
		Temp = Sender.PlayerOwner().ConsoleCommand("ISFULLSCREEN");
		moCheckBox(Sender).Checked(bool(Temp));	
		CheckSupportedResolutions();
	}			
}		
		 
function string InternalOnSaveINI(GUIComponent Sender); 		// Do the actual work here

function InternalOnChange(GUIComponent Sender)
{
	if (!Controller.bCurMenuInitialized)
		return;

	if (Sender==Controls[0] || Sender==Controls[1] || Sender==Controls[2] )
	{
		Controls[3].bVisible=true;
		
		if(Sender != Controls[0])
			CheckSupportedResolutions();
	}

	else if (Sender==Controls[6])
		PlayerOwner().ConsoleCommand("GAMMA"@GUISlider(Controls[6]).Value);

	else if (Sender==Controls[8])
		PlayerOwner().ConsoleCommand("BRIGHTNESS"@GUISlider(Controls[8]).Value);
		
	else if (Sender==Controls[10])
		PlayerOwner().ConsoleCommand("CONTRAST"@GUISlider(Controls[10]).Value);
}			

function bool ApplyChanges(GUIComponent Sender)
{
	local string DesiredRes;

	DesiredRes = moComboBox(Controls[0]).MyComboBox.Edit.GetText();
	
	if (moComboBox(Controls[1]).GetText()==BitDepthText[0])
		DesiredRes=DesiredRes$"x16";
	else
		DesiredRes=DesiredRes$"x32";

	if (moCheckBox(Controls[2]).IsChecked())
		DesiredRes=DesiredRes$"f";
	else
		DesiredRes=DesiredRes$"w";

	Controls[3].bVisible=false;
		
	if ( Controller.OpenMenu("RTInterface.VideoChangeOK") )
		VideoChangeOK(Controller.TopPage()).Execute(DesiredRes);

	return true;
}

defaultproperties
{
     DisplayModes(0)=(Width=320,Height=240)
     DisplayModes(1)=(Width=512,Height=384)
     DisplayModes(2)=(Width=640,Height=480)
     DisplayModes(3)=(Width=800,Height=600)
     DisplayModes(4)=(Width=1024,Height=640)
     DisplayModes(5)=(Width=1024,Height=768)
     DisplayModes(6)=(Width=1152,Height=864)
     DisplayModes(7)=(Width=1280,Height=800)
     DisplayModes(8)=(Width=1280,Height=960)
     DisplayModes(9)=(Width=1280,Height=1024)
     DisplayModes(10)=(Width=1600,Height=1200)
     DisplayModes(11)=(Width=1680,Height=1050)
     DisplayModes(12)=(Width=1920,Height=1200)
     BitDepthText(0)="16-bit Color"
     BitDepthText(1)="32-bit Color"
     Controls(0)=moComboBox'RTInterface.Tab_VideoSettings.VideoResolution'
     Controls(1)=moComboBox'RTInterface.Tab_VideoSettings.VideoColorDepth'
     Controls(2)=moCheckBox'RTInterface.Tab_VideoSettings.VideoFullScreen'
     Controls(3)=GUIButton'RTInterface.Tab_VideoSettings.VideoApply'
     Controls(4)=GUIImage'RTInterface.Tab_VideoSettings.GammaBK'
     Controls(5)=GUILabel'RTInterface.Tab_VideoSettings.GammaLabel'
     Controls(6)=GUISlider'RTInterface.Tab_VideoSettings.GammaSlider'
     Controls(7)=GUILabel'RTInterface.Tab_VideoSettings.BrightnessLabel'
     Controls(8)=GUISlider'RTInterface.Tab_VideoSettings.BrightnessSlider'
     Controls(9)=GUILabel'RTInterface.Tab_VideoSettings.ContrastLabel'
     Controls(10)=GUISlider'RTInterface.Tab_VideoSettings.ContrastSlider'
     Controls(11)=GUIImage'RTInterface.Tab_VideoSettings.GammaBar'
     WinTop=0.150000
     WinHeight=0.740000
}
