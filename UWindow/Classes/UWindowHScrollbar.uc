//================================================================================
// UWindowHScrollbar.
//================================================================================

class UWindowHScrollbar extends UWindowWindow;

var UWindowSBLeftButton LeftButton;
var UWindowSBRightButton RightButton;
var bool bDisabled;
var float MinPos;
var float MaxPos;
var float MaxVisible;
var float pos;
var float ThumbStart;
var float ThumbWidth;
var float NextClickTime;
var float DragX;
var bool bDragging;
var float ScrollAmount;

function Show (float P)
{
}

function bool Scroll (float Delta)
{
  local float OldPos;

  OldPos = pos;
  pos = pos + Delta;
  return pos == OldPos + Delta;
}

function SetRange (float NewMinPos, float NewMaxPos, float NewMaxVisible, optional float NewScrollAmount)
{
}

function CheckRange ()
{
}

function Created ()
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function Paint (Canvas C, float X, float Y)
{
}

function LMouseDown (float X, float Y)
{
}

function Tick (float Delta)
{
}

function MouseMove (float X, float Y)
{
}

defaultproperties
{
}
