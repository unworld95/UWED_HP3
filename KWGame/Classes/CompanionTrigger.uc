//================================================================================
// CompanionTrigger.
//================================================================================

class CompanionTrigger extends Trigger;

enum enumCTType {
  Type_None,
  Type_FollowMe,
  Type_StopFollowingMe,
  Type_WaitForMe,
  Type_FightWithMe,
  Type_StartCutScene,
  Type_StartPuzzle,
  Type_ChangeIdleBehaviour,
  Type_SwitchPlayerControlTo,
  Type_WaitInCorral,
  Type_WaitInCorralWhileInsideTrigger,
  Type_CheerInCorral
};

enum NoneFalseTrue
{
  NFT_None,
  NFT_False,
  NFT_True,
};

var() enum ELumosType
{
  Lumos_None,
  Lumos_Appear,
  Lumos_Disappear
} LumosType;

var(Advanced) enum EMountAction
{
  MA_AutoFinishMount,
  MA_AbleFinishMount,
  MA_UnAbleFinishMount,
  MA_StepUpOnlyMount,
} MountAction;

var() enumCTType ETriggerType;
var() string CompanionName[10];
var() name TargetTag;
var() string EnemyFocusCutname;
var() name EnemyManagerTag;
var() string ControllerTypeForCombat;
var() array<name> EnemyTags;
var() bool HeroFollow_bSetToDefaults;
var() float HeroFollow_TrailCharFollowRadius;
var() float HeroFollow_Target2dTolerance;
var() float HeroFollow_Target2dToleranceDelta;
var() float HeroFollow_LeadCharToleranceTowards;
var() float HeroFollow_TCWaitToMoveTimeOutMin;
var() float HeroFollow_TCWaitToMoveTimeOutMax;
var() float HeroFollow_MoveToLeadCharsSideTimer;
var() NoneFalseTrue HeroFollow_UseDistFromLeadCharForMovement;
var() bool HeroSwitch_PlayerLocation;
var() float fTimeToSwitch;
var KWPawn SavedCompanions[2];
var bool bDoActionWhenTriggered;



function SetHeroFollowParametersToDefault (KWAIController kwaicontr)
{
}

function ResetHeroFollowParameters (string comname)
{
}

function SetHeroFollowParameters (string comname)
{
}

function bool IsRelevant (Actor Other)
{
	return false;
}

function Activate (Actor Other, Pawn Instigator)
{
}

function Deactivate (Actor Other, Pawn Instigator)
{
  return;
}

function CheerInCorral_Deactivate (Actor Other, Pawn Instigator)
{
}

function WaitInCorral_Deactivate (KWPawn LeadChar, Pawn Instigator)
{
}

function FollowMe (KWPawn H)
{
}

function StopFollowingMe (KWPawn H)
{
}

function FightWithMe (KWPawn H, string ControllerTypeForCombat)
{
}

function KWPawn FindCompanion (string CompanionName)
{
  local KWPawn h2;
  return h2;
}

function WaitInCorral (KWPawn lc)
{
}

function CheerInCorral ()
{
}

function bool IsCheerTriggerActive ()
{
  return True;
}

defaultproperties
{
     fTimeToSwitch=1.000000
     bDoActionWhenTriggered=True
     bTriggerOnceOnly=True
     Texture=Texture'KWGame.CompanionTrigger'
}
