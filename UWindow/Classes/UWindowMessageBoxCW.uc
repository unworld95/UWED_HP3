//================================================================================
// UWindowMessageBoxCW.
//================================================================================

class UWindowMessageBoxCW extends UWindowDialogClientWindow;

var MessageBoxButtons Buttons;
var MessageBoxResult EnterResult;
var UWindowSmallButton YesButton;
var UWindowSmallButton NoButton;
var UWindowSmallButton OKButton;
var UWindowSmallButton CancelButton;
var localized string YesText;
var localized string NoText;
var localized string OKText;
var localized string CancelText;
var UWindowMessageBoxArea MessageArea;

function Created ()
{
  Super.Created();
}

function KeyDown (int Key, float X, float Y)
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function Resized ()
{
}

function float GetHeight (Canvas C)
{
  return 44.0 + MessageArea.GetHeight(C);
}

function Paint (Canvas C, float X, float Y)
{
}

function SetupMessageBoxClient (string InMessage, MessageBoxButtons InButtons, MessageBoxResult InEnterResult)
{
}

function Notify (UWindowDialogControl C, byte E)
{
}

defaultproperties
{
     YesText="Yes"
     NoText="No"
     OKText="OK"
     CancelText="Cancel"
}
