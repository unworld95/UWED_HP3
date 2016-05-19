//================================================================================
// LoopMover.
//================================================================================

class LoopMover extends KWMover;

var int NextKeyNum;
var() int PauseTimes[24];
var() bool bTriggerToggle;
var bool bLooping;

state() LoopMove
{
}

defaultproperties
{
     InitialState="LoopMove"
}
