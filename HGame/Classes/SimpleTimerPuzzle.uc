Class SimpleTimerPuzzle extends Info;

var() float TargetTimeout;
var() name GameLostEvent;
var() Sound SFX_StartTimerSound;
var() Sound SFX_OutOfTime;
var() bool bMakeAllSTPsInLevelGoInactiveWhenTriggered;
var() float fKeepWaitingThisMuchTimeIfPlayerIsInCutscene;

defaultproperties
{
     TargetTimeout=5.000000
}
