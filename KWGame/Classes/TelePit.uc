//================================================================================
// TelePit.
//================================================================================

class TelePit extends KWTrigger;

var() string TelePitDest;
var() bool bUseTagForDest;
var() float TelePitFadeOut;
var() float TelePitFadeIn;
var() bool bIsActive;
var() bool bMoveInstantly;
var bool bFading;
var FadeViewDelegate FadeController;
var() bool bActivateJustSetsAsActiveTelepit;
var() float DamageToDoToHero;
var() float ExtraDelayWhileFadedOut;
var() bool bPawnsInCutscenesCanActivate;

state stateFadeIn
{
}

state stateFadeOut
{
}

defaultproperties
{
     TelePitFadeOut=1.000000
     TelePitFadeIn=0.500000
     bIsActive=True
     DamageToDoToHero=5.000000
     bPawnsInCutscenesCanActivate=True
     Texture=Texture'KWGame.TelePit'
}
