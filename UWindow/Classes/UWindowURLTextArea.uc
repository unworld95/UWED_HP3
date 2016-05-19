//================================================================================
// UWindowURLTextArea.
//================================================================================

class UWindowURLTextArea extends UWindowDynamicTextArea;

var bool bReleased;

function BeforePaint (Canvas C, float X, float Y)
{
  Super.BeforePaint(C,X,Y);
}

function Paint (Canvas C, float X, float Y)
{
  Super.Paint(C,X,Y);
}

function TextAreaClipText (Canvas C, float DrawX, float DrawY, coerce string S, optional bool bCheckHotKey)
{
}

function LaunchUnrealURL (string URL)
{
}

function Click (float X, float Y)
{
  Super.Click(X,Y);
}

function ProcessText (Canvas C, out string Text, out string NextBlock, out float W, out float H, out byte bLink)
{
}

defaultproperties
{
     bIgnoreLDoubleClick=True
}
