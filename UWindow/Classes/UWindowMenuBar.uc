//================================================================================
// UWindowMenuBar.
//================================================================================

class UWindowMenuBar extends UWindowListControl;

var UWindowMenuBarItem Selected;
var UWindowMenuBarItem Over;
var bool bAltDown;
var int Spacing;

function Created ()
{
}

function UWindowMenuBarItem AddHelpItem (string Caption)
{
  local UWindowMenuBarItem i;
  return i;
}

function UWindowMenuBarItem AddItem (string Caption)
{
  local UWindowMenuBarItem i;
  return i;
}

function ResolutionChanged (float W, float H)
{
}

function Paint (Canvas C, float MouseX, float MouseY)
{
}

function MouseMove (float X, float Y)
{
}

function MouseLeave ()
{
  Super.MouseLeave();
}

function Select (UWindowMenuBarItem i)
{
}

function LMouseDown (float X, float Y)
{
}

function DrawItem (Canvas C, UWindowList item, float X, float Y, float W, float H)
{
}

function DrawMenuBar (Canvas C)
{
}

function CloseUp ()
{
}

function Close (optional bool bByParent)
{
}

function UWindowMenuBar GetMenuBar ()
{
  return self;
}

function bool HotKeyDown (int Key, float X, float Y)
{
  return False;
}

function bool HotKeyUp (int Key, float X, float Y)
{
  return False;
}

function KeyDown (int Key, float X, float Y)
{
}

function MenuCmd (int Menu, int item)
{
}

function MenuItemSelected (UWindowBase Sender, UWindowBase item)
{
}

defaultproperties
{
}
