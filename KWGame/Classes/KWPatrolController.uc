//================================================================================
// KWPatrolController.
//================================================================================

class KWPatrolController extends KWAIController;

var Controller PendingController;
var KWPatrolSetup PatrolSetup;
var bool bStopPatrol;
var bool bCheckingDoor;
var Actor PatrolGoal;
var float SleepTime;
var bool bLockedDoors;

function StartPatrol (KWPatrolSetup CurrentSetup)
{
}

function EndPatrol ()
{
}

function Tick (float DeltaTime)
{
}

function bool DoorwayClear ()
{
  return False;
}

state Patrolling
{
}

state FinishedPatrol
{
}

defaultproperties
{
}