//================================================================================
// KWBeam.
//================================================================================

class KWBeam extends Actor;

var name ShooterBone;
var Vector ShooterOffset;
var Actor Target;
var name TargetBone;
var Vector TargetOffset;
var Vector TargetNormal;
var float Speed;
var Vector ShooterEndLocation;
var Vector TargetEndLocation;
var KWBeamSegment FirstSegment;
var bool bRetracting;
var Class<KWBeamSegment> SegmentClass;

event Destroyed ()
{
}

function Fire (name inShooterBone, Vector inShooterOffset, Actor inTarget, name inTargetBone, Vector inTargetOffset, Vector inTargetNormal, float inSpeed, Vector TargetLocation)
{
}

function Release ()
{
}



state Firing
{
}

function DoHit ()
{
}

state Connected
{
}

state Dangle
{
}

defaultproperties
{
}
