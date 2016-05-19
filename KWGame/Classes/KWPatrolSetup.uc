//================================================================================
// KWPatrolSetup.
//================================================================================

class KWPatrolSetup extends Keypoint;

enum ePatrolPhysics {
  PHYS_Defaults,
  PHYS_Walking,
  PHYS_Flying,
  PHYS_Swimming
};

enum eProbeHearNoise {
  PE_Defaults,
  PE_EnableHearNoise,
  PE_DisableHearNoise
};

enum eProbeSeePlayer {
  PE_Defaults,
  PE_EnableSeePlayer,
  PE_DisableSeePlayer
};

enum eMoveType {
  MT_Automatic,
  MT_GoDirect,
  MT_PathOnly
};

enum ePatrolAction {
  ACTION_None,
  ACTION_Animate
};

enum ePatrolPattern {
  PATROL_Linear,
  PATROL_Looping,
  PATROL_Oscillating,
  PATROL_Random
};

enum eFocus {
  FOCUS_None,
  FOCUS_ActorTag,
  FOCUS_Location,
  FOCUS_GoalDir
};

enum eOptionalOverride {
  Dont_Use_Override,
  Use_Override
};

struct sSetupPatrolInfo
{
  var() name DestinationTag;
  var() float PauseTime;
  var() ePatrolAction Patrol_Action;
  var() bool ShouldWalkTo;
  var() eMoveType Patrol_MoveType;
  var() name Event_Reached;
  var() eProbeSeePlayer Event_SeePlayer;
  var() eProbeHearNoise Event_HearNoise;
  var() eFocus FOCUS_Type;
  var() name FOCUS_Tag;
  var() Vector FOCUS_Location;
  var() float Odds_Pause;
  var() float Odds_PatrolAction;
  var() float Odds_EventReached;
};

var() float Periphery_New;
var() eOptionalOverride Periphery_UseNewPV;
var() name Event_Finished;
var() array<sSetupPatrolInfo> SetupPatrolInfo;
var() ePatrolPattern Pattern;
var() name AffectedPawnTag;
var() eProbeSeePlayer Event_SeePlayer;
var() eProbeHearNoise Event_HearNoise;
var Pawn PatrollingPawn;
var KWPatrolController PatrollingPawnController;
var int CurrentSetupPatrolInfo;
var() int PatternLoopAmount;
var() ePatrolPhysics PatrolPhysics;
var int LoopCounter;
var bool bShouldWalk;
var() bool bLockDoorsAtStart;



function bool DoDirectMoveOnly ()
{
  return True;
}

function bool DoAutomaticPath ()
{
  return True;
}

function Actor GetCurrentGoal ()
{
	local Actor a;
	return a;
}

function bool CheckOdds (float OddsValue)
{
  return False;
}

function InitializeEventPolling ()
{
}

function TriggerReachedEvent ()
{
}

function bool ShouldDirectPath ()
{
  return True;
}

function bool ShouldAlwaysPath ()
{
  return True;
}

function bool ShouldWalk ()
{
  return True;
}

function float PauseTime ()
{
	return 1.0;
}

function SetPawnPhysics ()
{
}

function int GetNextSetupPatrolInfo ()
{
  local int TempSetupPatrolInfo;
  return TempSetupPatrolInfo;
}

function Actor GetNextPatrolPoint ()
{
  local Actor a;
  return a;
}

function PostBeginPlay ()
{
}

function LogAndVerifyRoute ()
{
}

function Actor GetActorWithTag (name TagName)
{
  local Actor A;
  return A;
}

function Trigger (Actor Other, Pawn EventInstigator)
{
}

function StartPatrol (Actor Other, Pawn EventInstigator)
{
}

function StopPatrol ()
{
}

defaultproperties
{
     bStatic=False
     CollisionRadius=0.000000
     CollisionHeight=0.000000
}
