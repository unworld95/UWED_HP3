//================================================================================
// FlyToDelegate.
//================================================================================

class FlyToDelegate extends Info;

var KWPawn Controlled;
var Actor ControlledPrevOwner;
var EPhysics SavedPhysics;
var Vector vFlyToStart;
var Vector vFlyToDest;
var Vector vFlyToDestOffset;
var Rotator rFlyToOffsetRotOffset;
var Rotator rFlyToRotStepSize;
var float fFlyToTime;
var float fFlyToTimeSpan;
var float fEaseBetweenLinearness;
var bool bFlyToTurnWithChar;
var Actor aFlyToActor;
var bool bFlyToStayLockedToActor;
var Vector vSplinePoint;
var bool bUseSplinePoint;
var bool bUseMoveSmoothInsteadOfSetLocation;
var name StateToGotoAfterInactive;
var float EstimatedAvgSpeed;

auto state StateInactive
{
}


event OnFlyToDone ()
{
}


state StateFlyTo extends StateInactive
{
}

defaultproperties
{
}
