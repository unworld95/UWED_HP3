//================================================================================
// KWHud.
//================================================================================

class KWHud extends HUD
  Config(User);

enum eKWHudTextColor {
  KWHTC_NearBlack,
  KWHTC_Black,
  KWHTC_NearWhite,
  KWHTC_White
};

  
var globalconfig bool bDisableHUD;
var float fBaseResX;
var float fBaseResY;
var float fScaleX;
var float fScaleY;
var Font KWBigFont;
var Font KWMedFont;
var Font KWSmallFont;
var Font KWTinyFont;
var KWCutTextController CutTextController;
var array<KWHudItem> HudItems;
var eKWHudTextColor HudTextColor;
var eKWHudTextColor HudTextShadow;
var array<KWOverlayPage> OverlayPages;
var string PlayerObjectiveDialogTag;
var bool bShowClientMessages;
var bool bHUDInitialized;
var bool bPauseWithSpecial;
var UWLevelInfo UWLevel;
var UWPlayerController UWPlayerOwner;		//Uses custom PlayerController class by UnWorld

defaultproperties
{
     fBaseResX=800.000000
     fBaseResY=600.000000
     KWBigFont=Font'KWGame.HugeInkFont'
     KWMedFont=Font'KWGame.BigInkFont'
     KWSmallFont=Font'KWGame.MedInkFont'
     KWTinyFont=Font'KWGame.SmallInkFont'
}
