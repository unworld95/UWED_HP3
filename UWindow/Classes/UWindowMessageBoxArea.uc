//================================================================================
// UWindowMessageBoxArea.
//================================================================================

class UWindowMessageBoxArea extends UWindowWindow;

var string Message;

function float GetHeight (Canvas C)
{
  local float tW;
  local float tH;
  local float H;
  local int L;
  local float OldWinHeight;

  OldWinHeight = WinHeight;
  WinHeight = 1000.0;
  C.Font = Root.Fonts[0];
  TextSize(C,"A",tW,tH);
  L = WrapClipText(C,0.0,0.0,Message,,,,True);
  H = tH * L;
  return H;
}

function Paint (Canvas C, float X, float Y)
{
  C.Font = Root.Fonts[0];
  C.SetDrawColor(0,0,0);
  WrapClipText(C,0.0,0.0,Message);
  C.SetDrawColor(255,255,255);
}

defaultproperties
{
}
