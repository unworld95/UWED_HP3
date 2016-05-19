//================================================================================
// UWindowBase.
//================================================================================

class UWindowBase extends Interaction;

struct HTMLStyle
{
  var int BulletLevel;
  var string LinkDestination;
  var Color TextColor;
  var Color BGColor;
  var bool bCenter;
  var bool bLink;
  var bool bUnderline;
  var bool bNoBR;
  var bool bHeading;
  var bool bBold;
  var bool bBlink;
};

enum PropertyCondition {
  PC_None,
  PC_LessThan,
  PC_Equal,
  PC_GreaterThan,
  PC_NotEqual,
  PC_Contains,
  PC_NotContains
};

enum MessageBoxResult {
  MR_None,
  MR_Yes,
  MR_No,
  MR_OK,
  MR_Cancel
};

enum MessageBoxButtons {
  MB_YesNo,
  MB_OKCancel,
  MB_OK,
  MB_YesNoCancel
};

enum MenuSound {
  MS_MenuPullDown,
  MS_MenuCloseUp,
  MS_MenuItem,
  MS_WindowOpen,
  MS_WindowClose,
  MS_ChangeTab
};

enum FrameHitTest {
  HT_NW,
  HT_N,
  HT_NE,
  HT_W,
  HT_E,
  HT_SW,
  HT_S,
  HT_SE,
  HT_TitleBar,
  HT_DragHandle,
  HT_None
};

enum TextAlign {
  TA_Left,
  TA_Right,
  TA_Center
};

struct TexRegion
{
  var() int X;
  var() int Y;
  var() int W;
  var() int H;
  var() Texture t;
};

struct Region
{
  var() int X;
  var() int Y;
  var() int W;
  var() int H;
};

const F_LargeBold= 3;
const F_Large= 2;
const F_Bold= 1;
const F_Normal= 0;

function Region NewRegion (float X, float Y, float W, float H)
{
  local Region R;
  return R;
}

function TexRegion NewTexRegion (float X, float Y, float W, float H, Texture t)
{
  local TexRegion R;
  return R;
}

function Region GetRegion (TexRegion t)
{
  local Region R;
  return R;
}

static function int InStrAfter (string Text, string Match, int pos)
{
  return -1;
}

static function Object BuildObjectWithProperties (string Text)
{
  local Object O;
  return O;
}

defaultproperties
{
}
