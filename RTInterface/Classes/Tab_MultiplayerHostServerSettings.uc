// ====================================================================
//  Class:  XInterface.Tab_MultiplayerHostServerSettings
//  Parent: XInterface.GUITabPanel
//
//  <Enter a description here>
// ====================================================================

class Tab_MultiplayerHostServerSettings extends GUITabPanel;

var Config 	bool 	bDedicated;
var	Config	bool	bLanPlay;	
var Config	bool	bUseDefaults;
var	Config	int		MinPlayers; //TODO - maybe get rid of
var Config 	int		MaxPlayers;
var Config	int		MaxSpecs;
var Config	string	AdminName;
var Config	string	AdminPass;
var Config	string	GamePass;
	
var moCheckBox 		MyDedicated;
var moCheckBox 		MyLanGame;
var moCheckBox		MyAdvertise;
var moCheckBox		MyUseDefaults;
var moNumericEdit	MyMinPlayers;
var moNumericEdit	MyMaxPlayers;
var moNumericEdit	MyMaxSpecs;	 

var moEditBox		MyServerName;
var moEditBox		MyServerPasswrd;
var	moEditBox		MyAdminName;
var	moEditBox		MyAdminEmail;
var	moEditBox		MyAdminPasswrd;
var	moEditBox		MyMOTD1;
var	moEditBox		MyMOTD2;
var	moEditBox		MyMOTD3;
var	moEditBox		MyMOTD4;
var moCheckBox 		MyUseWebAdmin;
var moNumericEdit	MyWebPort;

var GUIButton		LaunchButton;

delegate OnChangeCustomBots(bool Enable);

function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
	Super.InitComponent(MyController, MyOwner);
	
	MyDedicated 	= moCheckBox(Controls[2]);		MyDedicated.Checked(bDedicated);
	MyLanGame		= moCheckBox(Controls[3]);		MyLanGame.Checked(bLanPlay);
	MyAdvertise		= moCheckBox(Controls[4]);		MyAdvertise.Checked(class'MasterServerUplink'.default.DoUplink);

	MyMinPlayers	= moNumericEdit(Controls[6]);	MyMinPlayers.SetValue(MinPlayers);
	MyMaxPlayers	= moNumericEdit(Controls[7]);	MyMaxPlayers.SetValue(MaxPlayers);
	MyMaxSpecs		= moNumericEdit(Controls[8]);	MyMaxSpecs.SetValue(MaxSpecs);

	MyUseDefaults	= moCheckbox(Controls[5]);		MyUseDefaults.Checked(bUseDefaults);

	MyServerName	= moEditBox(Controls[9]);		MyServerName.SetText(class'GameReplicationInfo'.default.ServerName);
	MyServerPasswrd = moEditBox(Controls[10]);		MyServerPasswrd.SetText(GamePass);
	MyAdminName		= moEditBox(Controls[11]);		MyAdminName.SetText(AdminName);
	MyAdminEmail	= moEditBox(Controls[12]);		MyAdminEmail.SetText(class'GameReplicationInfo'.default.AdminEmail);	
	MyAdminPasswrd	= moEditBox(Controls[13]);		MyAdminPasswrd.SetText(AdminPass);
	MyMOTD1			= moEditBox(Controls[14]);		MyMOTD1.SetText(class'GameReplicationInfo'.default.MOTDLine1);
	MyMOTD2			= moEditBox(Controls[15]);		MyMOTD2.SetText(class'GameReplicationInfo'.default.MOTDLine2);
	MyMOTD3			= moEditBox(Controls[16]);		MyMOTD3.SetText(class'GameReplicationInfo'.default.MOTDLine3);
	MyMOTD4			= moEditBox(Controls[17]);		MyMOTD4.SetText(class'GameReplicationInfo'.default.MOTDLine4);
	MyUseWebAdmin	= moCheckBox(Controls[18]);		MyUseWebAdmin.Checked(class'WebServer'.default.benabled);
	MyWebPort		= moNumericEdit(Controls[19]);	MyWebPort.SetValue(class'WebServer'.default.ListenPort);	

	LaunchButton	= GUIButton(Controls[20]);
}

function string Play()
{
	local string url;
	
	bDedicated 		= MyDedicated.IsChecked();
	bLanPlay   		= MyLanGame.IsChecked();
	MinPlayers 		= MyMinPlayers.GetValue();
	MaxPlayers 		= MyMaxPlayers.GetValue();
	MaxSpecs  	 	= MyMaxSpecs.GetValue();
	bUseDefaults	= MyUseDefaults.IsChecked();
	GamePass		= MyServerPasswrd.GetText();
	AdminName		= MyAdminName.GetText();
	AdminPass		= MyAdminPasswrd.GetText();

	SaveConfig();

	class'MasterServerUplink'.default.DoUplink = MyAdvertise.IsChecked();
	class'MasterServerUplink'.Static.StaticSaveConfig();
	
	class'GameReplicationInfo'.default.ServerName 	= MyServerName.GetText();
	class'GameReplicationInfo'.default.AdminName  	= AdminName;
	
	class'GameReplicationInfo'.default.AdminEmail 	= MyAdminEmail.GetText();
	class'GameReplicationInfo'.default.MOTDLine1	= MyMOTD1.GetText();
	class'GameReplicationInfo'.default.MOTDLine2	= MyMOTD2.GetText();
	class'GameReplicationInfo'.default.MOTDLine3	= MyMOTD3.GetText();
	class'GameReplicationInfo'.default.MOTDLine4	= MyMOTD4.GetText();
	class'GameReplicationInfo'.static.StaticSaveConfig();
	
	class'WebServer'.Default.bEnabled = MyUseWebAdmin.IsChecked();
	class'WebServer'.Default.ListenPort = MyWebPort.GetValue();
	class'WebServer'.static.StaticSaveConfig();

	if (bLanPlay)
		Url=URL$"?LAN";
		
	if (!bUseDefaults)
		Url=Url$"?MaxPlayers="$MaxPlayers$"?MaxSpectators="$MaxSpecs;
		
	if ( (AdminName!="") && (AdminPass!="") )
		URL=URL$"?AdminName="$AdminName$"?AdminPassword="$AdminPass;
		
	if (GamePass!="")
		URL=URL$"?GamePassword="$GamePass;
	
	return url;	
}


function UseMapOnChange(GUIComponent Sender)
{
	if(!MyUseDefaults.IsChecked())
	{
		MyMinPlayers.MenuStateChange(MSAT_Blurry);
		MyMaxPlayers.MenuStateChange(MSAT_Blurry);
		MyMaxSpecs.MenuStateChange(MSAT_Blurry);
	}
	else
	{
		MyMinPlayers.MenuStateChange(MSAT_Disabled);
		MyMaxPlayers.MenuStateChange(MSAT_Disabled);
		MyMaxSpecs.MenuStateChange(MSAT_Disabled);
	}
}
	
function bool Launch(GUIComponent Sender)
{
	local string FullURL, GameURL, FirstMap;
	
	FirstMap = MainMenu(Controller.ActivePage).MapTab.MyMapList.List.Get();

	GameURL = Play();
	FullURL = FirstMap$GameURL;
	
    if( bDedicated )
        PlayerOwner().ConsoleCommand( "RELAUNCH " $ FullURL $ " -server -log=Server.log" );
    else
        PlayerOwner().ClientTravel( FullURL $"?Listen", TRAVEL_Absolute, false );

	Controller.CloseAll(false);
		
	return true;		
}

	

defaultproperties
{
     Controls(0)=GUIImage'RTInterface.Tab_MultiplayerHostServerSettings.MPServerBk1'
     Controls(1)=GUIImage'RTInterface.Tab_MultiplayerHostServerSettings.MPServerBk2'
     Controls(2)=moCheckBox'RTInterface.Tab_MultiplayerHostServerSettings.MPServerDedicated'
     Controls(3)=moCheckBox'RTInterface.Tab_MultiplayerHostServerSettings.MPServerLanGame'
     Controls(4)=moCheckBox'RTInterface.Tab_MultiplayerHostServerSettings.MPServerAdvertise'
     Controls(5)=moCheckBox'RTInterface.Tab_MultiplayerHostServerSettings.MPServerUseDefaults'
     Controls(6)=moNumericEdit'RTInterface.Tab_MultiplayerHostServerSettings.MPServerMinPlayers'
     Controls(7)=moNumericEdit'RTInterface.Tab_MultiplayerHostServerSettings.MPServerMaxPlayers'
     Controls(8)=moNumericEdit'RTInterface.Tab_MultiplayerHostServerSettings.MPServerMaxSpecs'
     Controls(9)=moEditBox'RTInterface.Tab_MultiplayerHostServerSettings.MPServerName'
     Controls(10)=moEditBox'RTInterface.Tab_MultiplayerHostServerSettings.MPServerPW'
     Controls(11)=moEditBox'RTInterface.Tab_MultiplayerHostServerSettings.MPServerAdminName'
     Controls(12)=moEditBox'RTInterface.Tab_MultiplayerHostServerSettings.MPServerAdminEmail'
     Controls(13)=moEditBox'RTInterface.Tab_MultiplayerHostServerSettings.MPServerAdminPW'
     Controls(14)=moEditBox'RTInterface.Tab_MultiplayerHostServerSettings.MPServerMOTD1'
     Controls(15)=moEditBox'RTInterface.Tab_MultiplayerHostServerSettings.MPServerMOTD2'
     Controls(16)=moEditBox'RTInterface.Tab_MultiplayerHostServerSettings.MPServerMOTD3'
     Controls(17)=moEditBox'RTInterface.Tab_MultiplayerHostServerSettings.MPServerMOTD4'
     Controls(18)=moCheckBox'RTInterface.Tab_MultiplayerHostServerSettings.MPServerUseWebAdmin'
     Controls(19)=moNumericEdit'RTInterface.Tab_MultiplayerHostServerSettings.MPServerWebPort'
     Controls(20)=GUIButton'RTInterface.Tab_MultiplayerHostServerSettings.LaunchB'
     WinTop=0.150000
     WinHeight=0.770000
}
