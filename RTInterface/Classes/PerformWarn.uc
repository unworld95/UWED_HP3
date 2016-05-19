class PerformWarn extends GUIPage;

function bool InternalOnClick(GUIComponent Sender)
{
	Controller.CloseMenu(false);
	return true;
}

defaultproperties
{
     bRequire640x480=False
     Controls(0)=GUIButton'RTInterface.PerformWarn.DialogBackground'
     Controls(1)=GUIButton'RTInterface.PerformWarn.OKButton'
     Controls(2)=GUILabel'RTInterface.PerformWarn.DialogText'
     Controls(3)=GUILabel'RTInterface.PerformWarn.DialogText2'
     WinTop=0.375000
     WinHeight=0.250000
}
