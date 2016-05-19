class Tab_IForceSettings extends GUITabPanel;

var moCheckBox AutoSlope;
var moCheckBox InvertMouse;
var moCheckBox MouseSmooth;
var moCheckBox MouseLag;
var moCheckBox UseJoystick;
var moFloatEdit MouseSens;
var moFloatEdit MenuSens;
var moCheckBox ifWeapon;
var moCheckBox ifPickup;
var moCheckBox ifDamage;
var moCheckBox ifGUI;

var moFloatEdit MouseSmoothStr;
var moFloatEdit MouseThreshold;
var moFloatEdit DoubleClick;


function InitComponent(GUIController MyController, GUIComponent MyOwner)
{

	local int i;
    local string s;
	Super.Initcomponent(MyController, MyOwner);

	for (i=0;i<Controls.Length;i++)
		Controls[i].OnChange=InternalOnChange;

	AutoSlope	= moCheckBox(Controls[1]);  AutoSlope.Checked(PlayerOwner().bSnapToLevel);
	InvertMouse = moCheckBox(Controls[2]);  InvertMouse.Checked(class'PlayerInput'.default.bInvertMouse);
	MouseSmooth = moCheckBox(Controls[3]);  MouseSmooth.Checked(class'PlayerInput'.default.MouseSmoothingMode>0);
	UseJoystick = moCheckBox(Controls[4]);  UseJoystick.Checked(bool(PlayerOwner().ConsoleCommand("get ini:Engine.Engine.ViewportManager UseJoystick")));

	MouseLag    = moCheckBox(Controls[16]);

	s = PlayerOwner().ConsoleCommand("get ini:Engine.Engine.RenderDevice ReduceMouseLag");
    MouseLag.Checked(bool(s));

	MouseSens = moFloatEdit(Controls[5]); MouseSens.SetValue(class'PlayerInput'.default.MouseSensitivity);
    MenuSens  = moFloatEdit(Controls[6]); MenuSens.SetValue(Controller.MenuMouseSens);

	ifWeapon = moCheckBox(Controls[8]); ifWeapon.Checked(class'PlayerController'.default.bEnableWeaponForceFeedback );
	ifPickup = moCheckBox(Controls[9]); ifPickup.Checked(class'PlayerController'.default.bEnablePickupForceFeedback );
	ifDamage = moCheckBox(Controls[10]); ifDamage.Checked(class'PlayerController'.default.bEnableDamageForceFeedback );
	ifGUI	 = moCheckBox(Controls[11]); ifGUI.Checked(class'PlayerController'.default.bEnableGUIForceFeedback );

    MouseSmoothStr = moFloatEdit(Controls[13]); MouseSmoothStr.SetValue(class'PlayerInput'.Default.MouseSmoothingStrength);
    MouseThreshold = moFloatEdit(Controls[14]); MouseThreshold.SetValue(class'PlayerInput'.Default.MouseAccelThreshold);
    DoubleClick    = moFloatEdit(Controls[15]); DoubleClick.SetValue(class'PlayerInput'.Default.DoubleClickTime);
}

function InternalOnChange(GUIComponent Sender)
{
	if (!Controller.bCurMenuInitialized)
		return;

    if (Sender==MouseLag)
    	PlayerOwner().ConsoleCommand("set ini:Engine.Engine.RenderDevice ReduceMouseLag "$MouseLag.IsChecked());

	if (Sender==AutoSlope)
	{
		PlayerOwner().bSnapToLevel = AutoSlope.IsChecked();
		PlayerOwner().SaveConfig();
	}

	if (Sender==InvertMouse)
	{
		PlayerOwner().ConsoleCommand("set PlayerInput bInvertMouse "$InvertMouse.IsChecked());
		class'PlayerInput'.default.bInvertMouse = InvertMouse.IsChecked();
		class'PlayerInput'.static.StaticSaveConfig();
	}

	if (Sender==MouseSmooth)
	{
		if ( MouseSmooth.IsChecked() )
			class'PlayerInput'.default.MouseSmoothingMode = 1;
		else
			class'PlayerInput'.default.MouseSmoothingMode = 0;
	}

	if (Sender==UseJoystick)
	{
		PlayerOwner().ConsoleCommand("set ini:Engine.Engine.ViewportManager UseJoystick"@UseJoystick.IsChecked());
	}

	if (Sender==MouseSens)
	{
		class'PlayerInput'.default.MouseSensitivity = MouseSens.GetValue();
		PlayerOwner().ConsoleCommand("set PlayerInput MouseSensitivity "$MouseSens.GetValue());
		class'PlayerInput'.static.StaticSaveConfig();
	}

	if (Sender==MouseSmoothStr)
	{
		class'PlayerInput'.default.MouseSmoothingStrength = MouseSmoothStr.GetValue();
		PlayerOwner().ConsoleCommand("set PlayerInput MouseSmoothingStrength "$MouseSmoothStr.GetValue());
		class'PlayerInput'.static.StaticSaveConfig();
	}

	if (Sender==MouseThreshold)
	{
		class'PlayerInput'.default.MouseAccelThreshold = MouseThreshold.GetValue();
		PlayerOwner().ConsoleCommand("set PlayerInput MouseAccelThreshold "$MouseThreshold.GetValue());
		class'PlayerInput'.static.StaticSaveConfig();
	}

	if (Sender==DoubleClick)
	{
		class'PlayerInput'.default.DoubleClickTime = DoubleClick.GetValue();
		PlayerOwner().ConsoleCommand("set PlayerInput DoubleClickTime "$DoubleClick.GetValue());
		class'PlayerInput'.static.StaticSaveConfig();
	}


	if (Sender==MenuSens)
	{
		Controller.MenuMouseSens = MenuSens.GetValue();
		Controller.SaveConfig();
	}

	if (Sender==ifWeapon)
	{
		PlayerOwner().bEnableWeaponForceFeedback = ifWeapon.IsChecked();
		PlayerOwner().bForceFeedbackSupported = PlayerOwner().ForceFeedbackSupported
		(	ifWeapon.IsChecked()
		||	ifPickup.IsChecked()
		||	ifDamage.IsChecked()
		||	ifGUI.IsChecked()
		);
		class'PlayerController'.SaveConfig();
	}

	if (Sender==ifPickup)
	{
		PlayerOwner().bEnablePickupForceFeedback = ifPickup.IsChecked();
		PlayerOwner().bForceFeedbackSupported = PlayerOwner().ForceFeedbackSupported
		(	ifWeapon.IsChecked()
		||	ifPickup.IsChecked()
		||	ifDamage.IsChecked()
		||	ifGUI.IsChecked()
		);
		class'PlayerController'.SaveConfig();
	}

	if (Sender==ifDamage)
	{
		PlayerOwner().bEnableDamageForceFeedback = ifDamage.IsChecked();
		PlayerOwner().bForceFeedbackSupported = PlayerOwner().ForceFeedbackSupported
		(	ifWeapon.IsChecked()
		||	ifPickup.IsChecked()
		||	ifDamage.IsChecked()
		||	ifGUI.IsChecked()
		);
		class'PlayerController'.SaveConfig();
	}

	if (Sender==ifGUI)
	{
		PlayerOwner().bEnableGUIForceFeedback = ifGUI.IsChecked();
		PlayerOwner().bForceFeedbackSupported = PlayerOwner().ForceFeedbackSupported
		(	ifWeapon.IsChecked()
		||	ifPickup.IsChecked()
		||	ifDamage.IsChecked()
		||	ifGUI.IsChecked()
		);
		class'PlayerController'.SaveConfig();
	}
}

defaultproperties
{
     Controls(0)=GUIImage'RTInterface.Tab_IForceSettings.InputBK1'
     Controls(1)=moCheckBox'RTInterface.Tab_IForceSettings.InputAutoSlope'
     Controls(2)=moCheckBox'RTInterface.Tab_IForceSettings.InputInvertMouse'
     Controls(3)=moCheckBox'RTInterface.Tab_IForceSettings.InputMouseSmoothing'
     Controls(4)=moCheckBox'RTInterface.Tab_IForceSettings.InputUseJoystick'
     Controls(5)=moFloatEdit'RTInterface.Tab_IForceSettings.InputMouseSensitivity'
     Controls(6)=moFloatEdit'RTInterface.Tab_IForceSettings.InputMenuSensitivity'
     Controls(7)=GUIImage'RTInterface.Tab_IForceSettings.InputBK2'
     Controls(8)=moCheckBox'RTInterface.Tab_IForceSettings.InputIFWeaponEffects'
     Controls(9)=moCheckBox'RTInterface.Tab_IForceSettings.InputIFPickupEffects'
     Controls(10)=moCheckBox'RTInterface.Tab_IForceSettings.InputIFDamageEffects'
     Controls(11)=moCheckBox'RTInterface.Tab_IForceSettings.InputIFGUIEffects'
     Controls(12)=GUILabel'RTInterface.Tab_IForceSettings.InputIForceLabel'
     Controls(13)=moFloatEdit'RTInterface.Tab_IForceSettings.InputMouseSmoothStr'
     Controls(14)=moFloatEdit'RTInterface.Tab_IForceSettings.InputMouseAccel'
     Controls(15)=moFloatEdit'RTInterface.Tab_IForceSettings.InputDodgeTime'
     Controls(16)=moCheckBox'RTInterface.Tab_IForceSettings.InputMouseLag'
     WinTop=0.150000
     WinHeight=0.740000
}
