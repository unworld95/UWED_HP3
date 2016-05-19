//================================================================================
// UWindowHTMLTextArea.
//================================================================================

class UWindowHTMLTextArea extends UWindowDynamicTextArea;

var Color TextColor;
var Color BGColor;
var Color LinkColor;
var Color ALinkColor;
var float LastBlinkTime;
var bool bShowBlink;
var bool bReleased;

function SetHTML (string HTML)
{
}

function BeforePaint (Canvas C, float X, float Y)
{
}

function Paint (Canvas C, float X, float Y)
{
}

function Click (float X, float Y)
{
}

function ProcessURL (string URL)
{
}

function OverURL (string URL)
{
}

function LaunchUnrealURL (string URL)
{
}

function TextAreaTextSize (Canvas C, string Text, out float W, out float H)
{
}

function TextAreaClipText (Canvas C, float DrawX, float DrawY, coerce string Text, optional bool bCheckHotKey)
{
}

function WrapRow (Canvas C, UWindowDynamicTextRow L)
{
}

function float DrawTextLine (Canvas C, UWindowDynamicTextRow L, float Y)
{
  local float RowHeight;
  return RowHeight;
}

function UWindowDynamicTextRow SplitRowAt (UWindowDynamicTextRow L, int SplitPos)
{
  return None;
}

function RemoveWrap (UWindowDynamicTextRow L)
{
}

function int GetWrapPos (Canvas C, UWindowDynamicTextRow L, float MaxWidth)
{
  return -1;
}

function RemoveNextWord (out string Text, out string NextWord)
{
}

function UWindowDynamicTextRow AddText (string NewLine)
{
  local UWindowDynamicTextRow L;
  return L;
}

function ParseHTML (string Input, out string LeftText, out string HTML, out string RightText)
{
}

function float CalcHTMLTextWidth (Canvas C, string Text, out HTMLStyle CurrentStyle)
{
  local float Width;
  return Width;
}

function ProcessInlineHTML (string HTML, out HTMLStyle CurrentStyle)
{
}

function HTMLUpdateStyle (string Input, out HTMLStyle CurrentStyle)
{
}

function string GetOption (string HTML, string Option)
{
  return "";
}

function string GetTag (string HTML)
{
	return "";
}

function Color ParseColor (string S)
{
  local Color C;
  return C;
}

function int GetHexDigit (string D)
{
  return 0;
}

function int FirstMatching (int i, int j)
{
	return 0;
}

function SetCanvasStyle (Canvas C, HTMLStyle CurrentStyle)
{
}

function string WriteStyleText (HTMLStyle CurrentStyle, int CharCount)
{
  local string Output;
  return Output;
}

function int ReadStyleText (string StyleString, out int StylePos, out HTMLStyle CurrentStyle)
{
  local int CharCount;
  return CharCount;
}

defaultproperties
{
     TextColor=(B=255,G=255,R=255,A=255)
     BGColor=(A=255)
     LinkColor=(R=255,A=255)
     ALinkColor=(B=255,A=255)
     bTopCentric=True
     bAutoScrollbar=True
     bVariableRowHeight=True
     RowClass=Class'UWindow.UWindowHTMLTextRow'
     bIgnoreLDoubleClick=True
}
