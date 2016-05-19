//================================================================================
// UWindowMessageBox.
//================================================================================

class UWindowMessageBox extends UWindowFramedWindow;

var MessageBoxResult Result;
var float TimeOutTime;
var int TimeOut;
var bool bSetupSize;
var int FrameCount;

function SetupMessageBox (string Title, string Message, MessageBoxButtons Buttons, MessageBoxResult InESCResult, optional MessageBoxResult InEnterResult, optional int InTimeOut)
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function AfterPaint (Canvas C, float X, float Y)
{
}

function Close (optional bool bByParent)
{
}

defaultproperties
{
     ClientClass=Class'UWindow.UWindowMessageBoxCW'
}
