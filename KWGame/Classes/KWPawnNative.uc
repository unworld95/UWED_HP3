//================================================================================
// KWPawnNative.
//================================================================================

class KWPawnNative extends UWPawn notplaceable;

var SplineManager SplineManager;
var(Spline) name SplinePathName;
var(Spline) name StartSplinePointTag;
var(Spline) name DestSplinePointTag;
var(Spline) float SplineSpeed;
var(Spline) float SplineAccel;
var KWInterpolationPoint LastIPoint;
var Rotator SplineRotSave;
var(Spline) bool bInterpolating_IgnoreRot;
var(Spline) float IPSpeed;
var const native float LastMoveTime;
var const native Vector OldLocation;
var float fNavStallTime;
var(AI) float fMinDistBeforeStall;
var(AI) float fTimeBeforeStall;
var(AI) float fTimeToUseAdvancedTacticsAfterStall;
var Vector vStepDiff;

state() patrolFollowSpline
{
}

state stateSplinePause
{
}

defaultproperties
{
     vStepDiff=(X=100.000000,Z=16.000000)
}
