//================================================================================
// KWDecoration.
//================================================================================

class KWDecoration extends Decoration;

struct AnimInfo
{
  var() name AnimationName;
  var() float fAnimRate;
  var() float fChanceToPlay;
  var() bool bStopAtThisAnim;
  var() float fPauseBeforeAnim;
  var() float fPauseAfterAnim;
  var() float fTweenInTime;
  var() bool bLoop;
  var() Sound SoundToPlay;
  var() Color ColorToFadeTo;
  var() float fTimeForColorFade;
};

struct SoundInfo
{
  var() float Volume;
  var() float Radius;
  var() float Pitch;
};

var(Animations) array<AnimInfo> AnimInfos;
var(Animations) bool bPlayRandomly;
var(Animations) int currentAnimIndex;
var(Animations) bool bStopAnimatingOnUntrigger;
var(Animations) bool bTriggerToggles;
var(Animations) bool bAutoStartFirstAnim;
var(Animations) bool bDestroyAfterLastAnim;
var int WorkingCurrentAnimIndex;
var bool bAnimsStarted;
var() Class<Emitter> EmitterToTurnIntoOnHitWall;
var() Class<KWPawn> AnimateOnTouchFromType;
var() bool bPersistent;
var() FadeActorDelegate fader;
var() bool bDestroyOnLand;
var float CreationTime;


function PostBeginPlay ()
{
}

event SavePersistentData ()
{
}

event RestorePersistentData ()
{
}

function Destroyed ()
{
}

singular function BaseChange ()
{
}

function Trigger (Actor A, Pawn P)
{
}

function OnEvent (name E)
{
}

function Touch (Actor Other)
{
}

event Landed (Vector HitNormal)
{
}

event HitWall (Vector HitNormal, Actor HitWall)
{
}

function DoHitWallEmitter ()
{
}

auto state() StateNotAnimating
{
}

state() StateAnimating
{
}

defaultproperties
{
     bStatic=False
     bUnlit=True
}
