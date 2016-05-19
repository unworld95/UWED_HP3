//================================================================================
// BossEncounterTrigger.
//================================================================================

class BossEncounterTrigger extends Trigger;

var KWPawn boss;
var() bool bHeroShouldLockOntoBoss;
var() bool bReverseInput;
var() bool bKeepHeroFixed;
var() bool bFixedFaceDirection;
var() bool bDontNeedABoss;
var() bool bExtendedTargetting;
var() bool bDontShowBossMeter;
var() bool bDontUseBossCam;
var Vector vFixedFaceDirection;
var bool bDoActionWhenTriggered;

function Activate (Actor Other, Pawn Instigator)
{
}

defaultproperties
{
     bHeroShouldLockOntoBoss=True
     bDoActionWhenTriggered=True
     bTriggerOnceOnly=True
     bDirectional=True
}
