//================================================================================
// KWDebugRootWindow.
//================================================================================

class KWDebugRootWindow extends UDebugRootWindow;

function Created ()
{
}

function bool KeyEvent (out EInputKey Key, out EInputAction Action, float Delta)
{
  return True;
}

defaultproperties
{
}
