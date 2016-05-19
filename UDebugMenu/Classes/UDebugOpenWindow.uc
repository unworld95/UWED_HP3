//================================================================================
// UDebugOpenWindow.
//================================================================================

class UDebugOpenWindow extends UWindowFramedWindow;

var UWindowSmallCloseButton CloseButton;
var UWindowSmallButton OKButton;
var string OKText;

function Created ()
{
  Super.Created();
}

function Resized ()
{
  Super.Resized();
}

function BeforePaint (Canvas C, float X, float Y)
{
  Super.BeforePaint(C,X,Y);
}

function Paint (Canvas C, float X, float Y)
{
  Super.Paint(C,X,Y);
}

defaultproperties
{
     OKText="OK"
     ClientClass=Class'UDebugMenu.UDebugOpenCW'
     WindowTitle="Open Location"
}
