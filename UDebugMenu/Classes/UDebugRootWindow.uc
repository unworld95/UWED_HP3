//================================================================================
// UDebugRootWindow.
//================================================================================

class UDebugRootWindow extends UWindowRootWindow;

var Class<UWindowMenuBar> MenuBarClass;
var UDebugMenuBar MenuBar;

function Created ()
{
  Super.Created();
}

function Resized ()
{
  Super.Resized();
}

function DoQuitGame ()
{
  Super.DoQuitGame();
}

function bool KeyEvent (out EInputKey Key, out EInputAction Action, float Delta)
{
  return Super.KeyEvent(Key,Action,Delta);
}

state UWindows
{
}

defaultproperties
{
     LookAndFeelClass="UDebugMenu.UDebugBlueLookAndFeel"
}
