//================================================================================
// UWindowDialogClientWindow.
//================================================================================

class UWindowDialogClientWindow extends UWindowClientWindow;

var float DesiredWidth;
var float DesiredHeight;
var UWindowDialogControl TabLast;

function OKPressed ()
{
}

function Notify (UWindowDialogControl C, byte E)
{
}

function UWindowDialogControl CreateControl (Class<UWindowDialogControl> ControlClass, float X, float Y, float W, float H, optional UWindowWindow OwnerWindow)
{
  local UWindowDialogControl C;
  return C;
}

function Paint (Canvas C, float X, float Y)
{
}

function GetDesiredDimensions (out float W, out float H)
{
}

defaultproperties
{
}
