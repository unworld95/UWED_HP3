//================================================================================
// UDebugMapListWindow.
//================================================================================

class UDebugMapListWindow extends UWindowFramedWindow;

function Created ()
{
  Super.Created();
}

defaultproperties
{
     ClientClass=Class'UDebugMenu.UDebugMapListCW'
     WindowTitle="Select a Map..."
}
