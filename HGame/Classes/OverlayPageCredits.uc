Class OverlayPageCredits extends KWOverlayPage;

#exec Font import File=Textures\HugeInkFontBold_PageA.bmp Name=HugeInkFontBold MASKED=1
#exec Font import File=Textures\HPBigInkFont_PageC.bmp Name=BigInkFontBold MASKED=1
#exec Font import File=Textures\MedInkFontBold_PageA.bmp Name=MedInkFontBold MASKED=1
#exec Font import File=Textures\SmallInkFontBold_PageA.bmp Name=SmallInkFontBold MASKED=1
#exec Font import File=Textures\TinyInkFontBold_PageA.bmp Name=TinyInkFontBold MASKED=1

struct LineStruct
{
  var float X;
  var float Y;
  var Color FontColor;
  var int FontSize;
  var bool Valid;
  var string Text;
};

const TimerInterval= 0.01;
const LINE_MAX= 18;
const INCREMENT= 0.004;
const Low= 0.9;
const High= 0.1;
var Font HugeFont;
var Font BigFont;
var Font MedFont;
var Font SmallFont;
var Font TinyFont;
var LineStruct LS[18];
var array<string> FileString;
var int StringIndex;
var Color FontColor[3];
var bool FontsInitialized;
var Texture BGTexture;

defaultproperties
{
     HugeFont=Font'HGame.HugeInkFontBold'
     BigFont=Font'HGame.BigInkFontBold'
     MedFont=Font'HGame.MedInkFontBold'
     SmallFont=Font'HGame.SmallInkFontBold'
     TinyFont=Font'HGame.TinyInkFontBold'
     FontColor(0)=(B=255,G=255,R=255,A=255)
     FontColor(1)=(B=255,G=255,R=255,A=255)
     FontColor(2)=(B=255,G=255,R=255,A=255)
     BGTexture=Texture'KWMenu.HUD.CutBorder'
}
