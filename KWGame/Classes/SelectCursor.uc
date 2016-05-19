//================================================================================
// SelectCursor.
//================================================================================

class SelectCursor extends Actor;

var PlayerController Player;
var bool bReadyToTargetClickOnly;
var float fClickTimeThreshold;
var() bool bTargetSelf;
var Actor aPossibleTarget;
var Actor aCurrentTarget;
var bool bCursorOn;
var() bool bOnByDefault;
var bool bActivated;
var() bool bActivatedByDefault;
var float fCursorDistanceFromScreen;
var Vector vLOS_Dir;
var Vector vLOS_Start;
var Vector vLOS_End;
var Vector vLastValidHitPos;
var config float fLOS_Distance;
var Vector vHitLocation;
var Vector vHitNormal;
var bool bHitSomething;
var bool bDebug;
var Emitter temp;
var bool bPauseWithSpecial;


simulated event ReleasedFire ();

simulated event ReleasedAltFire ();

auto state StateIdle
{
}

state StateFiring
{
}

state StateAltFiring
{
}

defaultproperties
{
     fClickTimeThreshold=0.200000
     bOnByDefault=True
     fCursorDistanceFromScreen=50.000000
     fLOS_Distance=1500.000000
     CollisionRadius=5.000000
     CollisionHeight=5.000000
}
