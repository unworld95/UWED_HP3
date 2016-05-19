//================================================================================
// UWindowTabControlTabArea.
//================================================================================

class UWindowTabControlTabArea extends UWindowWindow;

var int TabOffset;
var bool bShowSelected;
var UWindowTabControlItem FirstShown;
var bool bDragging;
var UWindowTabControlItem DragTab;
var int TabRows;
var globalconfig bool bArrangeRowsLikeTimHates;
var float UnFlashTime;
var bool bFlashShown;

function Created ()
{
}

function SizeTabsSingleLine (Canvas C)
{
}

function SizeTabsMultiLine (Canvas C)
{
}

function LayoutTabs (Canvas C)
{
}

function Paint (Canvas C, float X, float Y)
{
}

function LMouseDown (float X, float Y)
{
}

function MouseMove (float X, float Y)
{
}

function RMouseDown (float X, float Y)
{
}

function DrawItem (Canvas C, UWindowList item, float X, float Y, float W, float H, bool bShowText)
{
}

function bool CheckMousePassThrough (float X, float Y)
{
  return Y >= LookAndFeel.Size_TabAreaHeight * TabRows;
}

defaultproperties
{
}
