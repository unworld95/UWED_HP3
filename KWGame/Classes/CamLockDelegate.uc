//================================================================================
// CamLockDelegate.
//================================================================================

class CamLockDelegate extends Info;

var() bool bLock;
var() Actor ActorToLock;
var Rotator LockCone;
var float fSpeed;
var float fTightness;
var KWHeroController Player;

function Init (Actor act, Rotator Cone, bool bShouldLock, float Speed, float tightness)
{
}

function DestroyAllLockDelegates ()
{
}

function Finish ()
{
}

state stateLock
{
}

defaultproperties
{
}
