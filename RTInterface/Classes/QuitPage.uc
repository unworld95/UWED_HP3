class QuitPage extends GUIPage;

function bool InternalOnClick(GUIComponent Sender)
{
	if (Sender==Controls[1])
	{
		PlayerOwner().ConsoleCommand("exit");
	}
	else
		Controller.CloseMenu(false);
	
	return true;
}

defaultproperties
{
     bRequire640x480=False
     Controls(0)=GUIButton'RTInterface.QuitPage.QuitBackground'
     Controls(1)=GUIButton'RTInterface.QuitPage.YesButton'
     Controls(2)=GUIButton'RTInterface.QuitPage.NoButton'
     Controls(3)=GUILabel'RTInterface.QuitPage.QuitDesc'
     WinTop=0.375000
     WinHeight=0.250000
}
