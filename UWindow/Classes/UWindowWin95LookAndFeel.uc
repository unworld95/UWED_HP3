//================================================================================
// UWindowWin95LookAndFeel.
//================================================================================

class UWindowWin95LookAndFeel extends UWindowLookAndFeel;

#exec texture import file=Textures\ActiveFrame.bmp Name=ActiveFrame group=Icons
#exec texture import file=Textures\InactiveFrame.bmp Name=InactiveFrame group=Icons
#exec texture import file=Textures\ActiveFrameS.bmp Name=ActiveFrameS group=Icons
#exec texture import file=Textures\InactiveFrameS.bmp Name=InactiveFrameS group=Icons
#exec texture import file=Textures\Misc.bmp Name=Misc group=Icons

const BRSIZEBORDER= 15;
const SIZEBORDER= 3;
var() Region SBUpUp;
var() Region SBUpDown;
var() Region SBUpDisabled;
var() Region SBDownUp;
var() Region SBDownDown;
var() Region SBDownDisabled;
var() Region SBLeftUp;
var() Region SBLeftDown;
var() Region SBLeftDisabled;
var() Region SBRightUp;
var() Region SBRightDown;
var() Region SBRightDisabled;
var() Region SBBackground;
var() Region FrameSBL;
var() Region FrameSB;
var() Region FrameSBR;
var() Region CloseBoxUp;
var() Region CloseBoxDown;
var() int CloseBoxOffsetX;
var() int CloseBoxOffsetY;

function FW_DrawWindowFrame (UWindowFramedWindow W, Canvas C)
{
}

/*
function FW_SetupFrameButtons (UWindowFramedWindow W, Canvas C)
{
  return None;
}
*/

/*
function FrameHitTest FW_HitTest (UWindowFramedWindow W, float X, float Y)
{
	return FrameHitTest.HT_None;
}
*/

function DrawClientArea (UWindowClientWindow W, Canvas C)
{
}

function Combo_SetupSizes (UWindowComboControl W, Canvas C)
{
}

function Combo_Draw (UWindowComboControl W, Canvas C)
{
}

function ComboList_DrawBackground (UWindowComboList W, Canvas C)
{
}

function ComboList_DrawItem (UWindowComboList Combo, Canvas C, float X, float Y, float W, float H, string Text, bool bSelected)
{
}

function Checkbox_SetupSizes (UWindowCheckbox W, Canvas C)
{
}

function Combo_GetButtonBitmaps (UWindowComboButton W)
{
}

function Editbox_SetupSizes (UWindowEditControl W, Canvas C)
{
}

function Editbox_Draw (UWindowEditControl W, Canvas C)
{
}

function Tab_DrawTab (UWindowTabControlTabArea tab, Canvas C, bool bActiveTab, bool bLeftmostTab, float X, float Y, float W, float H, string Text, bool bShowText)
{
}

function SB_SetupUpButton (UWindowSBUpButton W)
{
}

function SB_SetupDownButton (UWindowSBDownButton W)
{
}

function SB_SetupLeftButton (UWindowSBLeftButton W)
{
}

function SB_SetupRightButton (UWindowSBRightButton W)
{
}

function SB_VDraw (UWindowVScrollbar W, Canvas C)
{
}

function SB_HDraw (UWindowHScrollbar W, Canvas C)
{
}

function Tab_SetupLeftButton (UWindowTabControlLeftButton W)
{
}

function Tab_SetupRightButton (UWindowTabControlRightButton W)
{
}

function Tab_SetTabPageSize (UWindowPageControl W, UWindowPageWindow P)
{
}

function Tab_DrawTabPageArea (UWindowPageControl W, Canvas C, UWindowPageWindow P)
{
}

function Tab_GetTabSize (UWindowTabControlTabArea tab, Canvas C, string Text, out float W, out float H)
{
}

function Menu_DrawMenuBar (UWindowMenuBar W, Canvas C)
{
}

function Menu_DrawMenuBarItem (UWindowMenuBar B, UWindowMenuBarItem i, float X, float Y, float W, float H, Canvas C)
{
}

function Menu_DrawPulldownMenuBackground (UWindowPulldownMenu W, Canvas C)
{
}

function Menu_DrawPulldownMenuItem (UWindowPulldownMenu M, UWindowPulldownMenuItem item, Canvas C, float X, float Y, float W, float H, bool bSelected)
{
}

defaultproperties
{
     SBUpUp=(X=1319431,Y=570949632,W=16,h=795145)
     SBUpDown=(X=2105863,Y=570949632,W=16,h=795145)
     SBUpDisabled=(X=2892295,Y=570949632,W=16,h=795145)
     SBDownUp=(X=1319431,Y=570949632,W=26,h=795145)
     SBDownDown=(X=2105863,Y=570949632,W=26,h=795145)
     SBDownDisabled=(X=2892295,Y=570949632,W=26,h=795145)
     SBLeftUp=(X=1319431,Y=570949632,W=48,h=664073)
     SBLeftDown=(X=1974791,Y=570949632,W=48,h=664073)
     SBLeftDisabled=(X=2630151,Y=570949632,W=48,h=664073)
     SBRightUp=(X=1319431,Y=570949632,W=36,h=664073)
     SBRightDown=(X=1974791,Y=570949632,W=36,h=664073)
     SBRightDisabled=(X=2630151,Y=570949632,W=36,h=664073)
     SBBackground=(X=270855,Y=570949632,W=79,h=74249)
     FrameSBL=(X=8711,Y=570949632,W=112,h=139785)
     FrameSB=(X=2105863,Y=570949632,W=112,h=74249)
     FrameSBR=(X=7348743,Y=570949632,W=112,h=1057289)
     CloseBoxUp=(X=270855,Y=570949632,W=32,h=729609)
     CloseBoxDown=(X=270855,Y=570949632,W=43,h=729609)
     CloseBoxOffsetX=3
     CloseBoxOffsetY=5
     Active=Texture'UWindow.Icons.ActiveFrame'
     Inactive=Texture'UWindow.Icons.InactiveFrame'
     ActiveS=Texture'UWindow.Icons.ActiveFrameS'
     InactiveS=Texture'UWindow.Icons.InactiveFrameS'
     Misc=Texture'UWindow.Icons.Misc'
     FrameTL=(X=8711,Y=570949632,h=139785)
     FrameT=(X=2105863,Y=570949632,h=74249)
     FrameTR=(X=8266247,Y=570949632,h=139785)
     FrameL=(X=8711,Y=570949632,W=32,h=139785)
     FrameR=(X=8266247,Y=570949632,W=32,h=139785)
     FrameBL=(X=8711,Y=570949632,W=125,h=139785)
     FrameB=(X=2105863,Y=570949632,W=125,h=74249)
     FrameBR=(X=8266247,Y=570949632,W=125,h=139785)
     FrameActiveTitleColor=(B=255,G=255,R=255,A=255)
     FrameInactiveTitleColor=(B=255,G=255,R=255,A=255)
     FrameTitleX=6
     FrameTitleY=4
     BevelUpTL=(X=270855,Y=570949632,W=16,h=139785)
     BevelUpT=(X=664071,Y=570949632,W=16,h=74249)
     BevelUpTR=(X=1188359,Y=570949632,W=16,h=139785)
     BevelUpL=(X=270855,Y=570949632,W=20,h=139785)
     BevelUpR=(X=1188359,Y=570949632,W=20,h=139785)
     BevelUpBL=(X=270855,Y=570949632,W=30,h=139785)
     BevelUpB=(X=664071,Y=570949632,W=30,h=74249)
     BevelUpBR=(X=1188359,Y=570949632,W=30,h=139785)
     BevelUpArea=(X=532999,Y=570949632,W=20,h=74249)
     MiscBevelTL(0)=(X=8711,Y=570949632,W=17,h=205321)
     MiscBevelTL(1)=(X=8711,Y=570949632,h=205321)
     MiscBevelTL(2)=(X=8711,Y=570949632,W=33,h=139785)
     MiscBevelT(0)=(X=205319,Y=570949632,W=17,h=7610889)
     MiscBevelT(1)=(X=205319,Y=570949632,h=7610889)
     MiscBevelT(2)=(X=139783,Y=570949632,W=33,h=74249)
     MiscBevelTR(0)=(X=7807495,Y=570949632,W=17,h=205321)
     MiscBevelTR(1)=(X=7807495,Y=570949632,h=205321)
     MiscBevelTR(2)=(X=729607,Y=570949632,W=33,h=139785)
     MiscBevelL(0)=(X=8711,Y=570949632,W=20,h=205321)
     MiscBevelL(1)=(X=8711,Y=570949632,W=3,h=205321)
     MiscBevelL(2)=(X=8711,Y=570949632,W=36,h=139785)
     MiscBevelR(0)=(X=7807495,Y=570949632,W=20,h=205321)
     MiscBevelR(1)=(X=7807495,Y=570949632,W=3,h=205321)
     MiscBevelR(2)=(X=729607,Y=570949632,W=36,h=139785)
     MiscBevelBL(0)=(X=8711,Y=570949632,W=30,h=205321)
     MiscBevelBL(1)=(X=8711,Y=570949632,W=14,h=205321)
     MiscBevelBL(2)=(X=8711,Y=570949632,W=44,h=139785)
     MiscBevelB(0)=(X=205319,Y=570949632,W=30,h=7610889)
     MiscBevelB(1)=(X=205319,Y=570949632,W=14,h=7610889)
     MiscBevelB(2)=(X=139783,Y=570949632,W=44,h=74249)
     MiscBevelBR(0)=(X=7807495,Y=570949632,W=30,h=205321)
     MiscBevelBR(1)=(X=7807495,Y=570949632,W=14,h=205321)
     MiscBevelBR(2)=(X=729607,Y=570949632,W=44,h=139785)
     MiscBevelArea(0)=(X=205319,Y=570949632,W=20,h=7610889)
     MiscBevelArea(1)=(X=205319,Y=570949632,W=3,h=7610889)
     MiscBevelArea(2)=(X=139783,Y=570949632,W=35,h=598537)
     ComboBtnUp=(X=1319431,Y=570949632,W=60,h=795145)
     ComboBtnDown=(X=2105863,Y=570949632,W=60,h=795145)
     ComboBtnDisabled=(X=2892295,Y=570949632,W=60,h=795145)
     ColumnHeadingHeight=13
     HLine=(X=336391,Y=570949632,W=78,h=74249)
     EditBoxBevel=2
     TabSelectedL=(X=270855,Y=570949632,W=80,h=205321)
     TabSelectedM=(X=467463,Y=570949632,W=80,h=74249)
     TabSelectedR=(X=3613191,Y=570949632,W=80,h=139785)
     TabUnselectedL=(X=3744263,Y=570949632,W=80,h=205321)
     TabUnselectedM=(X=3940871,Y=570949632,W=80,h=74249)
     TabUnselectedR=(X=7152135,Y=570949632,W=80,h=139785)
     TabBackground=(X=270855,Y=570949632,W=79,h=74249)
     Size_ScrollbarWidth=12.000000
     Size_ScrollbarButtonHeight=10.000000
     Size_MinScrollbarHeight=6.000000
     Size_TabAreaHeight=15.000000
     Size_TabAreaOverhangHeight=2.000000
     Size_TabSpacing=20.000000
     Size_TabXOffset=1.000000
     Pulldown_ItemHeight=15.000000
     Pulldown_VBorder=3.000000
     Pulldown_HBorder=3.000000
     Pulldown_TextBorder=9.000000
}
