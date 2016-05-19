//================================================================================
// UWindowFramedWindow.
//================================================================================

class UWindowFramedWindow extends UWindowWindow;

var Class<UWindowWindow> ClientClass;
var UWindowWindow ClientArea;
var localized string WindowTitle;
var string StatusBarText;
var float MoveX;
var float MoveY;
var float MinWinWidth;
var float MinWinHeight;
var bool bTLSizing;
var bool bTSizing;
var bool bTRSizing;
var bool bLSizing;
var bool bRSizing;
var bool bBLSizing;
var bool bBSizing;
var bool bBRSizing;
var bool bMoving;
var bool bSizable;
var bool bStatusBar;
var UWindowFrameCloseBox CloseBox;

function Created ()
{
}

function Texture GetLookAndFeelTexture ()
{
  return LookAndFeel.GetTexture(self);
}

function bool IsActive ()
{
  return ParentWindow.ActiveWindow == self;
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

function Resized ()
{
}

function MouseMove (float X, float Y)
{
}

function ToolTip (string strTip)
{
}

function WindowEvent (WinMessage Msg, Canvas C, float X, float Y, int Key)
{
}

function WindowHidden ()
{
}

defaultproperties
{
     ClientClass=Class'UWindow.UWindowClientWindow'
}
