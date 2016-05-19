class Tab_DetailSettings extends GUITabPanel;

var config bool bExpert;
var localized string	DetailLevels[7];
var bool				bPlayedSound;

// bit hacky - but needed to know if we are increasing detail
var int					prevWorldDetail, prevTextureDetail, prevCharDetail;

function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
	local int i;
	Super.Initcomponent(MyController, MyOwner);

	for (i=0;i<Controls.Length;i++)
		Controls[i].OnChange=InternalOnChange;

	if(PlayerOwner().Level.IsDemoBuild())
	{
		for(i = 0;i < 4;i++)
			moComboBox(Controls[1]).AddItem(DetailLevels[i]);
		for(i = 0;i < 4;i++)
			moComboBox(Controls[2]).AddItem(DetailLevels[i]);
	}
	else
	{
		for(i = 0;i < ArrayCount(DetailLevels);i++)
			moComboBox(Controls[1]).AddItem(DetailLevels[i]);
		for(i = 0;i < ArrayCount(DetailLevels);i++)
			moComboBox(Controls[2]).AddItem(DetailLevels[i]);
	}
	moComboBox(Controls[1]).ReadOnly(True);
	moComboBox(Controls[2]).ReadOnly(True);

	moComboBox(Controls[3]).AddItem(DetailLevels[3]);
	moComboBox(Controls[3]).AddItem(DetailLevels[4]);
	moComboBox(Controls[3]).AddItem(DetailLevels[6]);
	moComboBox(Controls[3]).ReadOnly(True);

	for(i = 2;i < 5;i++)
		moComboBox(Controls[4]).AddItem(DetailLevels[i]);
	moComboBox(Controls[4]).ReadOnly(True);

	for(i = 2;i < 5;i++)
		moComboBox(Controls[10]).AddItem(DetailLevels[i]);
	moComboBox(Controls[10]).ReadOnly(True);
}

function InternalOnLoadINI(GUIComponent Sender, string s)
{
	local int i;
	local bool a, b;

	if (Sender==Controls[1])
	{
		if(s == "UltraLow")
			prevTextureDetail=0;
		else if(s == "Low")
			prevTextureDetail=1;
		else if(s == "Lower")
			prevTextureDetail=2;
		else if(s == "Normal")
			prevTextureDetail=3;
		else if(s == "Higher")
			prevTextureDetail=4;
		else if(s == "High")
			prevTextureDetail=5;
		else if(s == "UltraHigh")
			prevTextureDetail=6;

		moComboBox(Sender).SetText(DetailLevels[prevTextureDetail]);
	}

	else if (Sender==Controls[2])
	{
		if(s == "UltraLow")
			prevCharDetail=0;
		else if(s == "Low")
			prevCharDetail=1;
		else if(s == "Lower")
			prevCharDetail=2;
		else if(s == "Normal")
			prevCharDetail=3;
		else if(s == "Higher")
			prevCharDetail=4;
		else if(s == "High")
			prevCharDetail=5;
		else if(s == "UltraHigh")
			prevCharDetail=6;

		moComboBox(Sender).SetText(DetailLevels[prevCharDetail]);
	}

	else if (Sender==Controls[3])
	{
		a = bool(PlayerOwner().ConsoleCommand("get ini:Engine.Engine.RenderDevice HighDetailActors"));
		b = bool(PlayerOwner().ConsoleCommand("get ini:Engine.Engine.RenderDevice SuperHighDetailActors"));

		if(b)
			prevWorldDetail=6;
		else if(a)
			prevWorldDetail=4;
		else
			prevWorldDetail=3;

		moComboBox(Sender).SetText(DetailLevels[prevWorldDetail]);
	}

	else if (Sender==Controls[4])
	{
		if(PlayerOwner().Level.default.PhysicsDetailLevel == PDL_Low)
			moComboBox(Sender).SetText(DetailLevels[2]);
		else if(PlayerOwner().Level.default.PhysicsDetailLevel == PDL_Medium)
			moComboBox(Sender).SetText(DetailLevels[3]);
		else
			moComboBox(Sender).SetText(DetailLevels[4]);
	}
	else if (Sender==Controls[5])
		moCheckBox(Sender).Checked(class'Runtime.RTPawn'.default.bPlayerShadows);

	else if (Sender==Controls[7])
		moCheckBox(Sender).Checked(!bool(s));

	else if (Sender==Controls[10])
	{
		i = PlayerOwner().Level.default.DecalStayScale;

		switch (i)
		{
			case 0 : moComboBox(Sender).SetText(DetailLevels[2]);break;
			case 1 : moComboBox(Sender).SetText(DetailLevels[3]);break;
			case 2 : moComboBox(Sender).SetText(DetailLevels[4]);break;
		}
	}
    else if (Sender==Controls[14])
    	moCheckBox(Sender).Checked(class'Runtime.RTPawn'.Default.bBlobShadow);
	else
		moCheckBox(Sender).Checked(bool(s));
}

function string InternalOnSaveINI(GUIComponent Sender); 		// Do the actual work here

function InternalOnChange(GUIComponent Sender)
{
	local String t,v;
	local bool b, goingUp;
	local int newDetail;

	if (!Controller.bCurMenuInitialized)
		return;

	if (Sender==Controls[1])
	{
		t = "set ini:Engine.Engine.ViewportManager TextureDetail";

		if(moComboBox(Sender).GetText() == DetailLevels[0])
		{
			v = "UltraLow";
			newDetail = 0;
		}
		else if(moComboBox(Sender).GetText() == DetailLevels[1])
		{
			v = "Low";
			newDetail = 1;
		}
		else if(moComboBox(Sender).GetText() == DetailLevels[2])
		{
			v = "Lower";
			newDetail = 2;
		}
		else if(moComboBox(Sender).GetText() == DetailLevels[3])
		{
			v = "Normal";
			newDetail = 3;
		}
		else if(moComboBox(Sender).GetText() == DetailLevels[4])
		{
			v = "Higher";
			newDetail = 4;
		}
		else if(moComboBox(Sender).GetText() == DetailLevels[5])
		{
			v = "High";
			newDetail = 5;
		}
		else if(moComboBox(Sender).GetText() == DetailLevels[6])
		{
			v = "UltraHigh";
			newDetail = 6;
		}

		PlayerOwner().ConsoleCommand(t$"Terrain"@v);
		PlayerOwner().ConsoleCommand(t$"World"@v);
		PlayerOwner().ConsoleCommand(t$"Rendermap"@v);
		PlayerOwner().ConsoleCommand(t$"Lightmap"@v);
		PlayerOwner().ConsoleCommand("flush");

		if(newDetail > prevTextureDetail)
			goingUp = true;

		prevTextureDetail = newDetail;
	}

	else if (Sender==Controls[2])
	{
		t = "set ini:Engine.Engine.ViewportManager TextureDetail";

		if(moComboBox(Sender).GetText() == DetailLevels[0])
		{
			v = "UltraLow";
			newDetail = 0;
		}
		else if(moComboBox(Sender).GetText() == DetailLevels[1])
		{
			v = "Low";
			newDetail = 1;
		}
		else if(moComboBox(Sender).GetText() == DetailLevels[2])
		{
			v = "Lower";
			newDetail = 2;
		}
		else if(moComboBox(Sender).GetText() == DetailLevels[3])
		{
			v = "Normal";
			newDetail = 3;
		}
		else if(moComboBox(Sender).GetText() == DetailLevels[4])
		{
			v = "Higher";
			newDetail = 4;
		}
		else if(moComboBox(Sender).GetText() == DetailLevels[5])
		{
			v = "High";
			newDetail = 5;
		}
		else if(moComboBox(Sender).GetText() == DetailLevels[6])
		{
			v = "UltraHigh";
			newDetail = 6;
		}

		PlayerOwner().ConsoleCommand(t$"WeaponSkin"@v);
		PlayerOwner().ConsoleCommand(t$"PlayerSkin"@v);
		PlayerOwner().ConsoleCommand("flush");

		if(newDetail > prevCharDetail)
			goingUp = true;

		prevCharDetail = newDetail;
	}

	else if (Sender==Controls[3])
	{
		if(moComboBox(Sender).GetText() == DetailLevels[6])
		{
			PlayerOwner().ConsoleCommand("set ini:Engine.Engine.RenderDevice HighDetailActors True");
			PlayerOwner().ConsoleCommand("set ini:Engine.Engine.RenderDevice SuperHighDetailActors True");
			PlayerOwner().Level.DetailChange(DM_SuperHigh);
			newDetail = 6;
		}
		else if(moComboBox(Sender).GetText() == DetailLevels[4])
		{
			PlayerOwner().ConsoleCommand("set ini:Engine.Engine.RenderDevice HighDetailActors True");
			PlayerOwner().ConsoleCommand("set ini:Engine.Engine.RenderDevice SuperHighDetailActors False");
			PlayerOwner().Level.DetailChange(DM_High);
			newDetail = 4;
		}
		else if(moComboBox(Sender).GetText() == DetailLevels[3])
		{
			PlayerOwner().ConsoleCommand("set ini:Engine.Engine.RenderDevice HighDetailActors False");
			PlayerOwner().ConsoleCommand("set ini:Engine.Engine.RenderDevice SuperHighDetailActors False");
			PlayerOwner().Level.DetailChange(DM_Low);
			newDetail = 3;
		}

		if(newDetail > prevWorldDetail)
			goingUp = true;

		prevWorldDetail = newDetail;
	}

	else if (Sender==Controls[4])
	{
		if (moComboBox(Sender).GetText()==DetailLevels[2])
			PlayerOwner().Level.default.PhysicsDetailLevel=PDL_Low;
		else if (moComboBox(Sender).GetText()==DetailLevels[3])
			PlayerOwner().Level.default.PhysicsDetailLevel=PDL_Medium;
		else if (moComboBox(Sender).GetText()==DetailLevels[4])
			PlayerOwner().Level.default.PhysicsDetailLevel=PDL_High;

		PlayerOwner().Level.PhysicsDetailLevel = PlayerOwner().Level.default.PhysicsDetailLevel;
		PlayerOwner().Level.SaveConfig();
	}

	else if (Sender==Controls[5])
	{
		PlayerOwner().ConsoleCommand("set Runtime.RTPawn bPlayerShadows "$moCheckBox(Sender).IsChecked());
		class'Runtime.RTPawn'.default.bPlayerShadows = moCheckBox(Sender).IsChecked();
		class'Runtime.RTPawn'.static.StaticSaveConfig();

		if( moCheckBox(Sender).IsChecked() )
			goingUp = true;
	}

    else if (Sender==Controls[14])
    {
		PlayerOwner().ConsoleCommand("set Runtime.RTPawn bBlobShadow "$moCheckBox(Sender).IsChecked());
		class'Runtime.RTPawn'.default.bBlobShadow = moCheckBox(Sender).IsChecked();
		class'Runtime.RTPawn'.static.StaticSaveConfig();
    }


	else if (Sender==Controls[7])
	{
		b = moCheckBox(Sender).IsChecked();
		b = b!=true;
		PlayerOwner().ConsoleCommand("set"@Sender.INIOption@b);

		if( moCheckBox(Sender).IsChecked() )
			goingUp = true;
	}

	else if (Sender==Controls[10])
	{
		if (moComboBox(Sender).GetText()==DetailLevels[4])
			PlayerOwner().Level.default.DecalStayScale=2;
		else if (moComboBox(Sender).GetText()==DetailLevels[3])
			PlayerOwner().Level.default.DecalStayScale=1;
		else if (moComboBox(Sender).GetText()==DetailLevels[2])
			PlayerOwner().Level.default.DecalStayScale=0;

		PlayerOwner().Level.DecalStayScale=PlayerOwner().Level.default.DecalStayScale;
		PlayerOwner().Level.SaveConfig();
	}

	else
	{
		PlayerOwner().ConsoleCommand("set"@Sender.INIOption@moCheckBox(Sender).IsChecked());

		if( moCheckBox(Sender).IsChecked() )
			goingUp = true;
	}

	// If we have increased the detail level, show paranoid warning
	if (goingUp && !bExpert)
		Controller.OpenMenu("RTInterface.PerformWarn");
}

defaultproperties
{
     DetailLevels(0)="Lowest"
     DetailLevels(1)="Lower"
     DetailLevels(2)="Low"
     DetailLevels(3)="Normal"
     DetailLevels(4)="High"
     DetailLevels(5)="Higher"
     DetailLevels(6)="Highest"
     Controls(0)=GUIImage'RTInterface.Tab_DetailSettings.DetailBK'
     Controls(1)=moComboBox'RTInterface.Tab_DetailSettings.DetailWorldDetail'
     Controls(2)=moComboBox'RTInterface.Tab_DetailSettings.DetailCharacterDetail'
     Controls(3)=moComboBox'RTInterface.Tab_DetailSettings.DetailActorDetail'
     Controls(4)=moComboBox'RTInterface.Tab_DetailSettings.DetailPhysics'
     Controls(5)=moCheckBox'RTInterface.Tab_DetailSettings.DetailCharacterShadows'
     Controls(6)=moCheckBox'RTInterface.Tab_DetailSettings.DetailDecals'
     Controls(7)=moCheckBox'RTInterface.Tab_DetailSettings.DetailDynamicLighting'
     Controls(8)=moCheckBox'RTInterface.Tab_DetailSettings.DetailCoronas'
     Controls(9)=moCheckBox'RTInterface.Tab_DetailSettings.DetailDetailTextures'
     Controls(10)=moComboBox'RTInterface.Tab_DetailSettings.DetailDecalStay'
     Controls(11)=moCheckBox'RTInterface.Tab_DetailSettings.DetailProjectors'
     Controls(12)=moCheckBox'RTInterface.Tab_DetailSettings.DetailDecoLayers'
     Controls(13)=moCheckBox'RTInterface.Tab_DetailSettings.DetailTrilinear'
     Controls(14)=moCheckBox'RTInterface.Tab_DetailSettings.DetailBlob'
     WinTop=0.150000
     WinHeight=0.740000
}
