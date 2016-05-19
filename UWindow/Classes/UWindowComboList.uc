//================================================================================
// UWindowComboList.
//================================================================================

class UWindowComboList extends UWindowListControl;

var UWindowComboControl Owner;
var UWindowVScrollbar VertSB;
var UWindowComboListItem Selected;
var int ItemHeight;
var int VBorder;
var int HBorder;
var int TextBorder;
var int MaxVisible;

function Sort ()
{
  Items.Sort();
}

function WindowShown ()
{
}

function Clear ()
{
}

function Texture GetLookAndFeelTexture ()
{
  return LookAndFeel.Active;
}

function Setup ()
{
}

function Created ()
{
}

function int FindItemIndex (string Value, optional bool bIgnoreCase)
{
  return -1;
}

function int FindItemIndex2 (string Value2, optional bool bIgnoreCase)
{
  return -1;
}

function string GetItemValue (int Index)
{
  return "";
}

function RemoveItem (int Index)
{
}

function string GetItemValue2 (int Index)
{
  return "";
}

function AddItem (string Value, optional string Value2, optional int SortWeight)
{
}

function InsertItem (string Value, optional string Value2, optional int SortWeight)
{
}

function SetSelected (float X, float Y)
{
}

function MouseMove (float X, float Y)
{
}

function LMouseUp (float X, float Y)
{
}

function LMouseDown (float X, float Y)
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function Paint (Canvas C, float X, float Y)
{
}

function DrawMenuBackground (Canvas C)
{
}

function DrawItem (Canvas C, UWindowList item, float X, float Y, float W, float H)
{
}

function ExecuteItem (UWindowComboListItem i)
{
}

function CloseUp ()
{
}

function FocusOtherWindow (UWindowWindow W)
{
}

defaultproperties
{
     MaxVisible=10
}
