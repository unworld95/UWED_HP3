Class HPPageCredits extends GUIPage;

struct LineStruct
{
  var float X;
  var float Y;
  var Color FontColor;
  var int FontSize;
  var bool Valid;
  var string Text;
};

var LineStruct LS[18];
var array<string> FileString;
var int StringIndex;
var Color FontColor[3];
var Texture BGTexture;
var bool Active;
var bool ShuttingDown;
var bool bIgnoreEscape;

const Interval= 0.02;
const LINE_MAX= 18;
const INCREMENT= 0.004;
const Low= 0.9;
const High= 0.1;

defaultproperties
{
     FontColor(0)=(B=255,G=255,R=255,A=255)
     FontColor(1)=(B=255,G=255,R=255,A=255)
     FontColor(2)=(B=255,G=255,R=255,A=255)
     BGTexture=Texture'KWMenu.HUD.CutBorder'
     bRequire640x480=False
     bAllowedAsLast=True
     WinHeight=1.000000
}
