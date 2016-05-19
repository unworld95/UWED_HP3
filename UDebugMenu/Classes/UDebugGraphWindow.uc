//================================================================================
// UDebugGraphWindow.
//================================================================================

class UDebugGraphWindow extends UWindowFramedWindow;

function Created ()
{
  Super.Created();
}

defaultproperties
{
     ClientClass=Class'UDebugMenu.UDebugGraphClientScroll'
     WindowTitle="I like PANTS!..."
}
