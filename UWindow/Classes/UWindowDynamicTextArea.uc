//================================================================================
// UWindowDynamicTextArea.
//================================================================================

class UWindowDynamicTextArea extends UWindowDialogControl;

var config int MaxLines;
var bool bTopCentric;
var float DefaultTextHeight;
var bool bScrollOnResize;
var bool bVCenter;
var bool bHCenter;
var bool bAutoScrollbar;
var bool bVariableRowHeight;
var float WrapWidth;
var UWindowDynamicTextRow List;
var UWindowVScrollbar VertSB;
var float OldW;
var float OldH;
var bool bDirty;
var int Count;
var int VisibleRows;
var int Font;
var Font AbsoluteFont;
var Color TextColor;
var Class<UWindowDynamicTextRow> RowClass;

function Created ()
{
}

function Clear ()
{
}

function SetAbsoluteFont (Font f)
{
}

function SetFont (int f)
{
}

function SetTextColor (Color C)
{
}

function TextAreaClipText (Canvas C, float DrawX, float DrawY, coerce string S, optional bool bCheckHotKey)
{
}

function TextAreaTextSize (Canvas C, string Text, out float W, out float H)
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function Paint (Canvas C, float MouseX, float MouseY)
{
}

function UWindowDynamicTextRow AddText (string NewLine)
{
  local UWindowDynamicTextRow L;
  return L;
}

function UWindowDynamicTextRow CheckMaxRows ()
{
  local UWindowDynamicTextRow L;
  return L;
}

function WordWrap (Canvas C, bool bForce)
{
}

function WrapRow (Canvas C, UWindowDynamicTextRow L)
{
}

function float DrawTextLine (Canvas C, UWindowDynamicTextRow L, float Y)
{
  return DefaultTextHeight;
}

function int GetWrapPos (Canvas C, UWindowDynamicTextRow L, float MaxWidth)
{
  return -1;
}

function UWindowDynamicTextRow SplitRowAt (UWindowDynamicTextRow L, int SplitPos)
{
  local UWindowDynamicTextRow N;
  return N;
}

function RemoveNextWord (out string Text, out string NextWord)
{
}

function RemoveWrap (UWindowDynamicTextRow L)
{
}

defaultproperties
{
     bScrollOnResize=True
     TextColor=(B=255,G=255,R=255,A=255)
     RowClass=Class'UWindow.UWindowDynamicTextRow'
     bNoKeyboard=True
}
