//================================================================================
// KWKarmaActor.
//================================================================================

class KWKarmaActor extends KActor;

enum EKarmaType {
  KType_None,
  KType_OnBumpOnly,
  KType_OnPunchOnly,
  KType_OnPunchOrBump,
  KType_OnTriggerOnly
};

var bool bStopByKarmaVolume;
var bool bWasHitInThisAttack;
var int NumberToHit;
var KWKarmaTimer KWKTimer;
var() EKarmaType KarmaType;
var() int DamageAmount;
var() float ForceFromHit;
var() float ForceFromBump;
var() bool bOnSendEvent;
var bool bKarmaJustOnce;
var float LifeAfterKarma;

function PostBeginPlay ()
{
}

function Bump (Actor Other)
{
}

function Touch (Actor Other)
{
}

event Trigger (Actor Other, Pawn EventInstigator)
{
}

function NoMoreKarma ()
{
}

function PushKarma (Vector Force, Vector Loc)
{
}

defaultproperties
{
     NumberToHit=-1
     ForceFromHit=10000.000000
     ForceFromBump=100.000000
     LifeAfterKarma=2.000000
}
