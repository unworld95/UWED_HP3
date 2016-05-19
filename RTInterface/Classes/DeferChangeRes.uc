class DeferChangeRes extends GUIPage;

function bool InternalOnClick(GUIComponent Sender)
{
	Controller.CloseMenu(false);
	return true;
}

defaultproperties
{
     bRequire640x480=False
     Controls(0)=GUIButton'RTInterface.DeferChangeRes.DialogBackground'
     Controls(1)=GUIButton'RTInterface.DeferChangeRes.OKButton'
     Controls(2)=GUILabel'RTInterface.DeferChangeRes.DialogText'
     Controls(3)=GUILabel'RTInterface.DeferChangeRes.DialogText2'
     WinTop=0.375000
     WinHeight=0.250000
}
