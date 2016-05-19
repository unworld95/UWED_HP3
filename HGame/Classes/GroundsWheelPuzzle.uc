Class GroundsWheelPuzzle extends Info;

var() array<float> TargetTimeouts;
var() array<name> TargetMoverTags;
var() name GameWonEvent;
var() name GameLostEvent;
var() name MasterMoverTag;
var() name TargetDisplayMoverTag;
var() float TargetDisplayMoveTime;
var() bool bInactiveUntilTriggered;
var() bool bResetOnGameWon;
var() Sound SFX_StepOnMasterTarget;
var() Sound SFX_CorrectTarget;
var() Sound SFX_WrongTarget;
var() Sound SFX_OutOfTime;
var() Sound SFX_GameWon;
var int iCurrentTarget;
var int iNumTargets;
var ElevatorMover TargetDisplayMover;

defaultproperties
{
     TargetDisplayMoveTime=1.000000
}
