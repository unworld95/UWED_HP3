class MainMenu extends GUIPage;

#exec OBJ LOAD FILE=GUIContent.utx

var bool				AllowClose;

var localized string	OpenMapTabLabel,
						OpenMapTabHint,
						ServerTabLabel,
						ServerTabHint,
						VideoTabLabel,
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

var Tab_InstantActionMain MapTab;
var Tab_PlayerSettings  pPlayer;
var Tab_NetworkSettings	pNetwork;

var float				SavedPitch;


function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
	local GUITabControl TabC;

	Super.InitComponent(MyController, MyOwner);

	TabC = GUITabControl(Controls[1]);
	GUITitleBar(Controls[0]).DockedTabs = TabC;

	MapTab = Tab_InstantActionMain(TabC.AddTab(OpenMapTabLabel,"RTInterface.Tab_InstantActionMain",,OpenMapTabHint,true));
	/* Removed temporarly until we can get a server browser. -- ctl
	TabC.AddTab(ServerTabLabel,"RTInterface.Tab_MultiplayerHostServerSettings",,ServerTabHint); 
	*/
	pPlayer = Tab_PlayerSettings(TabC.AddTab(PlayerTabLabel,"RTInterface.Tab_PlayerSettings",,PlayerTabHint));
	TabC.AddTab(VideoTabLabel,"RTInterface.Tab_VideoSettings",,VideoTabHint);
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



function bool CanClose(optional Bool bCanceled)
{
	if(AllowClose)
	{
            Controller.OpenMenu("RTInterface.QuitPage");
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
		Controller.OpenMenu("RTInterface.QuitPage");

	return true;
}

defaultproperties
{
     OpenMapTabLabel="Open Map"
     OpenMapTabHint="Open a map..."
     ServerTabLabel="Host Server"
     ServerTabHint="Configure nand launch a server from this tab..."
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
     Background=Texture'RuntimeInterfaceContent.urt_bg1'
     bPersistent=True
     bAllowedAsLast=True
     __OnCanClose__Delegate=MainMenu.CanClose
     __OnClose__Delegate=MainMenu.InternalOnClose
     Controls(0)=GUITitleBar'RTInterface.MainMenu.SettingHeader'
     Controls(1)=GUITabControl'RTInterface.MainMenu.SettingTabs'
     Controls(2)=GUITitleBar'RTInterface.MainMenu.SettingFooter'
     Controls(3)=GUIButton'RTInterface.MainMenu.QuitButton'
     WinHeight=1.000000
     __OnKeyEvent__Delegate=MainMenu.MyKeyEvent
}
