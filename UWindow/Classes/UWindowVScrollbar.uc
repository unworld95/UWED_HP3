//================================================================================
// UWindowVScrollbar.
//================================================================================

class UWindowVScrollbar extends UWindowWindow;

var UWindowSBUpButton UpButton;
var UWindowSBDownButton DownButton;
var bool bDisabled;
var float MinPos;
var float MaxPos;
var float MaxVisible;
var float pos;
var float ThumbStart;
var float ThumbHeight;
var float NextClickTime;
var float DragY;
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
  CheckRange();
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
  Super.Created();
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function Paint (Canvas C, float X, float Y)
{
  LookAndFeel.SB_VDraw(self,C);
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
