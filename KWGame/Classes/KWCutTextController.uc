//================================================================================
// KWCutTextController.
//================================================================================

class KWCutTextController extends Actor;

const BORDER_BOTTOM= 1;
const BORDER_TOP= 0;  

enum eBorderState {
  STATE_IDLE,
  STATE_SLIDEIN,
  STATE_SLIDEOUT,
  STATE_OUT,
  STATE_HOLD
};

struct BorderStruct
{
  var float fHeight;
  var eBorderState iState;
  var bool bResetBorderHeightToMax;
};
  
var BorderStruct Border[2];
var KWHud parentHUD;
var Texture textureBorder;
var Texture textureHourglass[3];
var int HourglassFrame;
var string strText;
var Font fontBig;
var Font fontMed;
var Font fontSmall;
var Font fontTiny;
var string strCutCommentText;
var float fSlideDivisor;
var bool bCutSceneInProgress;
var bool bCommentOnly;
var Color colorCutText;
var bool bShowFF;
var Texture textureFFIcons[3];
var int curFFIcon;
var array<string> strArr;
var bool bSplitString;
var int Index;
var float Duration;
var string Label;


function SetParentHud (KWHud SetParent)
{
}

function SetFont (Font fBig, Font fMed, Font fSmall, Font fTiny)
{
}

function SetFontColor (int R, int G, int B, int A)
{
}

function SetSlideDivisor (float S)
{
}

function StartCutScene (optional bool bMiniDialogue)
{
}

function EndCutScene ()
{
}

function ShowBypass ()
{
}

function SetText (string strSetText, float fSetTextDuration)
{
}

function ClearText ()
{
}

function SetCutCommentText (string strText)
{
}

function SplitText (Canvas Canvas)
{
}

function RenderHud (Canvas Canvas)
{
}

function SlideBordersIn ()
{
}

function SlideBordersOut ()
{
}

event Timer ()
{
}

function DrawBorder (Canvas Canvas)
{
}

function SetCurrBorderHeight (Canvas Canvas)
{
}

function float GetMaxBorderHeight (Canvas Canvas)
{
  return 1.0;
}

function float GetMaxBorderHeightFromCanvasHeight (int nCanvasSizeY)
{
  return 1.0 / 8.0;
}

function DrawText (Canvas Canvas)
{
}

function SlideBorder (Canvas Canvas, int i)
{
}

state Hourglass
{
}

defaultproperties
{
     fSlideDivisor=15.000000
     colorCutText=(B=127,G=127,R=255,A=255)
     bHidden=True
}
