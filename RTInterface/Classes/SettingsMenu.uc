class SettingsMenu extends GUIPage;

#exec OBJ LOAD FILE=GUIContent.utx

var bool				AllowClose;

var localized string	VideoTabLabel,
						VideoTabHint,
						DetailsTabLabel,
						DetailsTabHint,
						AudioTabLabel,
						AudioTabHint,
						PlayerTabLabel,
						PlayerTabHint,
						NetworkTabLabel,
						NetworkTabHint,
						ControlsTabLabel,
						ControlsTabHint,
						IForceTabLabel,
						IForceTabHint,
						WeaponsTabLabel,
						WeaponsTabHint,
						GameTabLabel,
						GameTabHint,
                        HudTabLabel,
                        HudTabHint,
						SpeechBinderTabLabel,
						SpeechBinderTabHint;

var Tab_PlayerSettings  pPlayer;
var Tab_NetworkSettings	pNetwork;

var float				SavedPitch;


function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
	local GUITabControl TabC;

	Super.InitComponent(MyController, MyOwner);

	TabC = GUITabControl(Controls[1]);
	GUITitleBar(Controls[0]).DockedTabs = TabC;

	pPlayer = Tab_PlayerSettings(TabC.AddTab(PlayerTabLabel,"RTInterface.Tab_PlayerSettings",,PlayerTabHint));
	TabC.AddTab(VideoTabLabel,"RTInterface.Tab_VideoSettings",,VideoTabHint, true);
	TabC.AddTab(DetailsTabLabel,"RTInterface.Tab_DetailSettings",,DetailsTabHint);
	TabC.AddTab(AudioTabLabel,"RTInterface.Tab_AudioSettings",,AudioTabHint);
	pNetwork = Tab_NetworkSettings(TabC.AddTab(NetworkTabLabel,"RTInterface.Tab_NetworkSettings",,NetworkTabHint));
	TabC.AddTab(ControlsTabLabel,"RTInterface.Tab_ControlSettings",,ControlsTabHint);
	TabC.AddTab(IForceTabLabel,"RTInterface.Tab_IForceSettings",,IForceTabHint);

	Controls[1].SetFocus(none);
}



function InternalOnClose(optional Bool bCanceled)
{
	local rotator NewRot;

	// Reset player
	NewRot = PlayerOwner().Rotation;
	NewRot.Pitch = SavedPitch;
	PlayerOwner().SetRotation(NewRot);

	// Save config.
	pPlayer.InternalApply(none);

	Super.OnClose(bCanceled);
}


function ResumeGame()
{
	Controller.CloseMenu();
}


function bool CanClose(optional Bool bCanceled)
{
	if(AllowClose)
	{
		ResumeGame();
	}

	return false;
}



function bool MyKeyEvent(out byte Key,out byte State,float delta)
{
	if(Key == 0x1B && State == 1)	// Escape pressed
	{
		AllowClose = true;
		return true;
	}
	else
		return false;
}



function TabChange(GUIComponent Sender)
{
	if (GUITabButton(Sender)==none)
		return;

	GUITitleBar(Controls[0]).Caption = GUITitleBar(default.Controls[0]).Caption@"|"@GUITabButton(Sender).Caption;
}



event ChangeHint(string NewHint)
{
	GUITitleBar(Controls[2]).Caption = NewHint;
}



event NotifyLevelChange()
{
	Controller.CloseMenu(true);
}


function bool ButtonClick(GUIComponent Sender)
{
	if (Sender==Controls[3] )
	{
		ResumeGame();
	}

	return true;
}

defaultproperties
{
     VideoTabLabel="Video"
     VideoTabHint="Select your resolution and change your brightness..."
     DetailsTabLabel="Details"
     DetailsTabHint="Adjust the detail settings for better graphics or faster framerate..."
     AudioTabLabel="Audio"
     AudioTabHint="Adjust your audio experience..."
     PlayerTabLabel="Avatar"
     PlayerTabHint="Configure your Avatar..."
     NetworkTabLabel="Network"
     NetworkTabHint="Configure online and LAN play..."
     ControlsTabLabel="Controls"
     ControlsTabHint="Configure your controls..."
     IForceTabLabel="Input"
     IForceTabHint="Configure input device options..."
     GameTabLabel="Runtime"
     HudTabLabel="HUD"
     Background=Texture'RuntimeInterfaceContent.urt_bg3'
     bAllowedAsLast=True
     __OnCanClose__Delegate=SettingsMenu.CanClose
     __OnClose__Delegate=SettingsMenu.InternalOnClose
     Controls(0)=GUITitleBar'RTInterface.SettingsMenu.SettingHeader'
     Controls(1)=GUITabControl'RTInterface.SettingsMenu.SettingTabs'
     Controls(2)=GUITitleBar'RTInterface.SettingsMenu.SettingFooter'
     Controls(3)=GUIButton'RTInterface.SettingsMenu.QuitButton'
     WinHeight=1.000000
     __OnKeyEvent__Delegate=SettingsMenu.MyKeyEvent
}
