//================================================================================
// UWindowHSplitter.
//================================================================================

class UWindowHSplitter extends UWindowWindow;

var UWindowWindow LeftClientWindow;
var UWindowWindow RightClientWindow;
var bool bSizing;
var float SplitPos;
var float MinWinWidth;
var float OldWinWidth;
var float MaxSplitPos;
var bool bRightGrow;
var bool bSizable;

function Created ()
{
  Super.Created();
}

function Paint (Canvas C, float X, float Y)
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function LMouseDown (float X, float Y)
{
}

function MouseMove (float X, float Y)
{
}

defaultproperties
{
     bSizable=True
}
