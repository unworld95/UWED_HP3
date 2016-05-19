//================================================================================
// ElevatorMover.
//================================================================================

class ElevatorMover extends KWMover;

var int LastKeyNum;
var int NextKeyNum;
var int MoveDirection;
var float MoveTimeInterval;
var bool bMoveKey;
var() bool bGoStraight;
var() bool bUseTriggerMoveTime;
var() name PuzzleName;

function BeginPlay ()
{
  Super.BeginPlay();
}

function MoveKeyframe (int NewKeyNum, float newMoveTime)
{
}

function DoOpen ()
{
}

function DoClose ()
{
}

state() ElevatorTriggerGradual
{
}

defaultproperties
{
}
