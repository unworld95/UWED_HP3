//================================================================================
// UDebugBlueLookAndFeel.
//================================================================================

class UDebugBlueLookAndFeel extends UWindowLookAndFeel;

#exec texture import File=Textures\BlueActiveFrame.tga Name=BlueActiveFrame Group=Icons
#exec texture import File=Textures\BlueActiveFrameS.tga Name=BlueActiveFrameS Group=Icons
#exec texture import File=Textures\BlueInactiveFrame.tga Name=BlueInactiveFrame Group=Icons
#exec texture import File=Textures\BlueInactiveFrameS.tga Name=BlueInactiveFrameS Group=Icons
#exec texture import File=Textures\BlueMisc.tga Name=BlueMisc Group=Icons

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

function FW_SetupFrameButtons (UWindowFramedWindow W, Canvas C)
{
}

function Region FW_GetClientArea (UWindowFramedWindow W)
{
  local Region R;
  return R;
}

/*
function FrameHitTest FW_HitTest (UWindowFramedWindow W, float X, float Y)
{
  return 10;
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

function Combo_SetupLeftButton (UWindowComboLeftButton W)
{
}

function Combo_SetupRightButton (UWindowComboRightButton W)
{
}

function Editbox_SetupSizes (UWindowEditControl W, Canvas C)
{
}

function Editbox_Draw (UWindowEditControl W, Canvas C)
{
}

function ControlFrame_SetupSizes (UWindowControlFrame W, Canvas C)
{
}

function ControlFrame_Draw (UWindowControlFrame W, Canvas C)
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

function Button_DrawSmallButton (UWindowSmallButton B, Canvas C)
{
}

simulated function PlayMenuSound (UWindowWindow W, MenuSound S)
{
}

defaultproperties
{
     SBUpUp=(X=1319433,Y=571080704,W=16,h=795143)
     SBUpDown=(X=2105865,Y=571080704,W=16,h=795143)
     SBUpDisabled=(X=2892297,Y=571080704,W=16,h=795143)
     SBDownUp=(X=1319433,Y=571080704,W=26,h=795143)
     SBDownDown=(X=2105865,Y=571080704,W=26,h=795143)
     SBDownDisabled=(X=2892297,Y=571080704,W=26,h=795143)
     SBLeftUp=(X=1319433,Y=571080704,W=48,h=664071)
     SBLeftDown=(X=1974793,Y=571080704,W=48,h=664071)
     SBLeftDisabled=(X=2630153,Y=571080704,W=48,h=664071)
     SBRightUp=(X=1319433,Y=571080704,W=36,h=664071)
     SBRightDown=(X=1974793,Y=571080704,W=36,h=664071)
     SBRightDisabled=(X=2630153,Y=571080704,W=36,h=664071)
     SBBackground=(X=270857,Y=571080704,W=79,h=74247)
     FrameSBL=(X=8713,Y=571080704,W=112,h=139783)
     FrameSB=(X=2105865,Y=571080704,W=112,h=74247)
     FrameSBR=(X=7348745,Y=571080704,W=112,h=1057287)
     CloseBoxUp=(X=270857,Y=571080704,W=32,h=729607)
     CloseBoxDown=(X=270857,Y=571080704,W=43,h=729607)
     CloseBoxOffsetX=2
     CloseBoxOffsetY=2
     Active=Texture'UDebugMenu.Icons.BlueActiveFrame'
     Inactive=Texture'UDebugMenu.Icons.BlueInactiveFrame'
     ActiveS=Texture'UDebugMenu.Icons.BlueActiveFrameS'
     InactiveS=Texture'UDebugMenu.Icons.BlueInactiveFrameS'
     Misc=Texture'UDebugMenu.Icons.BlueMisc'
     FrameTL=(X=8713,Y=571080704,h=139783)
     FrameT=(X=2105865,Y=571080704,h=74247)
     FrameTR=(X=8266249,Y=571080704,h=139783)
     FrameL=(X=8713,Y=571080704,W=32,h=139783)
     FrameR=(X=8266249,Y=571080704,W=32,h=139783)
     FrameBL=(X=8713,Y=571080704,W=125,h=139783)
     FrameB=(X=2105865,Y=571080704,W=125,h=74247)
     FrameBR=(X=8266249,Y=571080704,W=125,h=139783)
     FrameActiveTitleColor=(A=255)
     FrameInactiveTitleColor=(B=255,G=255,R=255,A=255)
     HeadingActiveTitleColor=(A=255)
     HeadingInActiveTitleColor=(B=255,G=255,R=255,A=255)
     FrameTitleX=6
     FrameTitleY=2
     BevelUpTL=(X=270857,Y=571080704,W=16,h=139783)
     BevelUpT=(X=664073,Y=571080704,W=16,h=74247)
     BevelUpTR=(X=1188361,Y=571080704,W=16,h=139783)
     BevelUpL=(X=270857,Y=571080704,W=20,h=139783)
     BevelUpR=(X=1188361,Y=571080704,W=20,h=139783)
     BevelUpBL=(X=270857,Y=571080704,W=30,h=139783)
     BevelUpB=(X=664073,Y=571080704,W=30,h=74247)
     BevelUpBR=(X=1188361,Y=571080704,W=30,h=139783)
     BevelUpArea=(X=533001,Y=571080704,W=20,h=74247)
     MiscBevelTL(0)=(X=8713,Y=571080704,W=17,h=205319)
     MiscBevelTL(1)=(X=8713,Y=571080704,h=205319)
     MiscBevelTL(2)=(X=8713,Y=571080704,W=33,h=139783)
     MiscBevelT(0)=(X=205321,Y=571080704,W=17,h=7610887)
     MiscBevelT(1)=(X=205321,Y=571080704,h=7610887)
     MiscBevelT(2)=(X=139785,Y=571080704,W=33,h=74247)
     MiscBevelTR(0)=(X=7807497,Y=571080704,W=17,h=205319)
     MiscBevelTR(1)=(X=7807497,Y=571080704,h=205319)
     MiscBevelTR(2)=(X=729609,Y=571080704,W=33,h=139783)
     MiscBevelL(0)=(X=8713,Y=571080704,W=20,h=205319)
     MiscBevelL(1)=(X=8713,Y=571080704,W=3,h=205319)
     MiscBevelL(2)=(X=8713,Y=571080704,W=36,h=139783)
     MiscBevelR(0)=(X=7807497,Y=571080704,W=20,h=205319)
     MiscBevelR(1)=(X=7807497,Y=571080704,W=3,h=205319)
     MiscBevelR(2)=(X=729609,Y=571080704,W=36,h=139783)
     MiscBevelBL(0)=(X=8713,Y=571080704,W=30,h=205319)
     MiscBevelBL(1)=(X=8713,Y=571080704,W=14,h=205319)
     MiscBevelBL(2)=(X=8713,Y=571080704,W=44,h=139783)
     MiscBevelB(0)=(X=205321,Y=571080704,W=30,h=7610887)
     MiscBevelB(1)=(X=205321,Y=571080704,W=14,h=7610887)
     MiscBevelB(2)=(X=139785,Y=571080704,W=44,h=74247)
     MiscBevelBR(0)=(X=7807497,Y=571080704,W=30,h=205319)
     MiscBevelBR(1)=(X=7807497,Y=571080704,W=14,h=205319)
     MiscBevelBR(2)=(X=729609,Y=571080704,W=44,h=139783)
     MiscBevelArea(0)=(X=205321,Y=571080704,W=20,h=7610887)
     MiscBevelArea(1)=(X=205321,Y=571080704,W=3,h=7610887)
     MiscBevelArea(2)=(X=139785,Y=571080704,W=35,h=598535)
     ComboBtnUp=(X=1319433,Y=571080704,W=60,h=795143)
     ComboBtnDown=(X=2105865,Y=571080704,W=60,h=795143)
     ComboBtnDisabled=(X=2892297,Y=571080704,W=60,h=795143)
     ColumnHeadingHeight=13
     HLine=(X=336393,Y=571080704,W=78,h=74247)
     EditBoxTextColor=(A=255)
     EditBoxBevel=2
     TabSelectedL=(X=270857,Y=571080704,W=80,h=205319)
     TabSelectedM=(X=467465,Y=571080704,W=80,h=74247)
     TabSelectedR=(X=3613193,Y=571080704,W=80,h=139783)
     TabUnselectedL=(X=3744265,Y=571080704,W=80,h=205319)
     TabUnselectedM=(X=3940873,Y=571080704,W=80,h=74247)
     TabUnselectedR=(X=7152137,Y=571080704,W=80,h=139783)
     TabBackground=(X=270857,Y=571080704,W=79,h=74247)
     Size_ScrollbarWidth=12.000000
     Size_ScrollbarButtonHeight=10.000000
     Size_MinScrollbarHeight=6.000000
     Size_TabAreaHeight=15.000000
     Size_TabAreaOverhangHeight=2.000000
     Size_TabSpacing=20.000000
     Size_TabXOffset=1.000000
     Pulldown_ItemHeight=16.000000
     Pulldown_VBorder=4.000000
     Pulldown_HBorder=3.000000
     Pulldown_TextBorder=9.000000
}
