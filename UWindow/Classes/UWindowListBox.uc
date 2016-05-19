//================================================================================
// UWindowListBox.
//================================================================================

class UWindowListBox extends UWindowListControl;

var float ItemHeight;
var UWindowVScrollbar VertSB;
var UWindowListBoxItem SelectedItem;
var bool bCanDrag;
var bool bCanDragExternal;
var string DefaultHelpText;
var bool bDragging;
var float DragY;
var UWindowListBox DoubleClickList;
var bool bHotTrack;

function Created ()
{
  Super.Created();
}

function UWindowListBoxItem AddItem (string C)
{
  local UWindowListBoxItem i;
  return i;
}

function BeforePaint (Canvas C, float MouseX, float MouseY)
{
}

function SetHelpText (string t)
{
}

function Sort ()
{
}

function Paint (Canvas C, float MouseX, float MouseY)
{
}

function Resized ()
{
}

function UWindowListBoxItem GetItemAt (float MouseX, float MouseY)
{
  return None;
}

function MakeSelectedVisible ()
{
}

function SetSelectedItem (UWindowListBoxItem NewSelected)
{
}

function SetSelected (float X, float Y)
{
}

function LMouseDown (float X, float Y)
{
}

function DoubleClick (float X, float Y)
{
}

function ReceiveDoubleClickItem (UWindowListBox L, UWindowListBoxItem i)
{
}

function DoubleClickItem (UWindowListBoxItem i)
{
}

function MouseMove (float X, float Y)
{
}

function bool ExternalDragOver (UWindowDialogControl ExternalControl, float X, float Y)
{
  return False;
}

function DrawItem (Canvas C, UWindowList item, float X, float Y, float W, float H)
{
}

function KeyUp (int Key, float X, float Y)
{
  Super.KeyUp(Key,X,Y);
}

defaultproperties
{
     ItemHeight=10.000000
     ListClass=Class'UWindow.UWindowListBoxItem'
     TextColor=(B=255,G=255,R=255)
}
