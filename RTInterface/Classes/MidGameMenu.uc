class MidGameMenu extends GUIPage;

var bool bIgnoreEsc;

var		localized string LeaveMPButtonText;
var		localized string LeaveSPButtonText;
var		localized string LeaveEntryButtonText;

var		float ButtonWidth;
var		float ButtonHeight;
var		float ButtonHGap;
var		float ButtonVGap;
var		float BarHeight;
var		float BarVPos;

function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
	local int i;

	Super.InitComponent(MyController, MyOwner);

	OnKeyEvent = InternalOnKeyEvent;
	OnClose = InternalOnClose;

	// Bar
	Controls[0].WinHeight = BarHeight;
	Controls[0].WinWidth = 1.0;
	Controls[0].WinTop = BarVPos - (0.5 * BarHeight);
	Controls[0].Winleft = 0.0;

	// U MIDDLE
	Controls[1].WinTop = BarVPos - ButtonVGap - (1.5 * ButtonHeight);
	Controls[1].WinLeft = 0.5 - (0.5 * ButtonWidth);

	// B L
	Controls[2].WinTop = BarVPos - (0.5 * ButtonHeight);
	Controls[2].WinLeft = 0.5 - (1.5 * ButtonWidth) - ButtonHGap;

	// U L
	Controls[3].WinTop = Controls[1].WinTop;
	Controls[3].WinLeft = Controls[2].WinLeft;

	// U R
	Controls[4].WinTop = Controls[1].WinTop;
	Controls[4].WinLeft = 0.5 + (0.5 * ButtonWidth) + ButtonHGap;

	for(i=1; i<5; i++)
	{
		Controls[i].WinWidth = ButtonWidth;
		Controls[i].WinHeight = ButtonHeight;
	}

	// Set 'leave' button text depending on if we are SP or MP
	if( PlayerOwner().Level.NetMode != NM_StandAlone )
		GUIButton(Controls[3]).Caption =  LeaveMPButtonText;
	else
		GUIButton(Controls[3]).Caption =  LeaveSPButtonText;
}

function bool InternalOnKeyEvent(out byte Key, out byte State, float delta)
{
	// Swallow first escape key event (key up from key down that opened menu)
	if(bIgnoreEsc && Key == 0x1B)
	{
		bIgnoreEsc = false;
		return true;
	}
}

function InternalOnClose(optional Bool bCanceled)
{
	local PlayerController pc;

	pc = PlayerOwner();

	// Turn pause off if currently paused
	if(pc != None && pc.Level.Pauser != None)
		pc.SetPause(false);

	Super.OnClose(bCanceled);
}

function bool InternalOnClick(GUIComponent Sender)
{

	if(Sender==Controls[2]) // QUIT
	{
		Controller.OpenMenu("RTInterface.QuitPage");
	}
	else if(Sender==Controls[3]) // LEAVE/DISCONNECT
	{
		Controller.OpenMenu(Controller.GetMainMenuClass());
		PlayerOwner().ConsoleCommand( "DISCONNECT" );
	}
	else if(Sender==Controls[1]) // CONTINUE
	{
		Controller.CloseMenu(); // Close _all_ menus
	}
	else if(Sender==Controls[4]) // SETTINGS
	{
		Controller.OpenMenu("RTInterface.SettingsMenu");
	}

	return true;
}

defaultproperties
{
     bIgnoreEsc=True
     LeaveMPButtonText="DISCONNECT"
     LeaveSPButtonText="CLOSE MAP"
     LeaveEntryButtonText="SERVER BROWSER"
     ButtonWidth=0.270000
     ButtonHeight=0.040000
     ButtonHGap=0.020000
     ButtonVGap=0.020000
     BarHeight=0.210000
     BarVPos=0.500000
     OpenSound=Sound'RuntimeInterfaceSounds.selectDshort'
     bRequire640x480=False
     bAllowedAsLast=True
     Controls(0)=GUIButton'RTInterface.MidGameMenu.QuitBackground'
     Controls(1)=GUIButton'RTInterface.MidGameMenu.ContMatchButton'
     Controls(2)=GUIButton'RTInterface.MidGameMenu.QuitGameButton'
     Controls(3)=GUIButton'RTInterface.MidGameMenu.LeaveMatchButton'
     Controls(4)=GUIButton'RTInterface.MidGameMenu.SettingsButton'
}
