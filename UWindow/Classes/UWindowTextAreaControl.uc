//================================================================================
// UWindowTextAreaControl.
//================================================================================

class UWindowTextAreaControl extends UWindowDialogControl;

var string TextArea[750];
var string Prompt;
var int Font;
var Font AbsoluteFont;
var int BufSize;
var int Head;
var int Tail;
var int Lines;
var int VisibleRows;
var bool bCursor;
var bool bScrollable;
var bool bShowCaret;
var bool bScrollOnResize;
var UWindowVScrollbar VertSB;
var float LastDrawTime;

function Created ()
{
}

function SetScrollable (bool newScrollable)
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function SetAbsoluteFont (Font f)
{
}

function Paint (Canvas C, float X, float Y)
{
}

function AddText (string NewLine)
{
}

function Resized ()
{
}

function SetPrompt (string NewPrompt)
{
}

function Clear ()
{
}

defaultproperties
{
     BufSize=750
     bScrollOnResize=True
}
