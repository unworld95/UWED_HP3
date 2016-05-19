//================================================================================
// KWHudItem.
//================================================================================

class KWHudItem extends Actor;

var KWHud parentHUD;
var KWMiniGame GameManager;
var Texture textureIcon;
var float TextureTop;
var float TextureLeft;
var bool bDisplayCount;
var int ItemCount;
var bool bUseCountString;
var string ItemCountString;
var int nCountMiddleX;
var int nCountMiddleY;
var bool bHideDuringCutscene;

simulated event PostBeginPlay ()
{
}

function SetParentHud (KWHud SetParent)
{
}

function RenderHud (Canvas Canvas)
{
}

function DrawHudItem (Canvas Canvas)
{
}

function DrawCount (Canvas Canvas, int nItemScaledX, int nItemScaledY)
{
}

function int GetCount ()
{
  return 0;
}

function string GetCountString ()
{
  return "";
}

function int GetItemXPos (Canvas Canvas)
{
  return int(TextureLeft * Canvas.SizeX);
}

function int GetItemYPos (Canvas Canvas)
{
  return 1;
}

function SetHudTimer (Actor aOther, float NewTimerRate, bool bLoop)
{
}

function ClearHudTimer ()
{
}

function StopHudTimer ()
{
}

function bool HideItem (string Tag)
{
  return False;
}

function bool ShowItem (string Tag)
{
  return False;
}

defaultproperties
{
     bHideDuringCutscene=True
     bHidden=True
}
