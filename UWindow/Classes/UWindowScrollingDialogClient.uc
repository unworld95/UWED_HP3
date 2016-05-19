//================================================================================
// UWindowScrollingDialogClient.
//================================================================================

class UWindowScrollingDialogClient extends UWindowPageWindow;

var bool bShowHorizSB;
var bool bShowVertSB;
var UWindowDialogClientWindow ClientArea;
var UWindowDialogClientWindow FixedArea;
var Class<UWindowDialogClientWindow> ClientClass;
var Class<UWindowDialogClientWindow> FixedAreaClass;
var UWindowVScrollbar VertSB;
var UWindowHScrollbar HorizSB;
var UWindowBitmap BRBitmap;

function Created ()
{
  Super.Created();
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function GetDesiredDimensions (out float W, out float H)
{
}

function Paint (Canvas C, float X, float Y)
{
}

defaultproperties
{
     ClientClass=Class'UWindow.UWindowDialogClientWindow'
}
