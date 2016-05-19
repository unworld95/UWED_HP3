//================================================================================
// KWRotatingMover.
//================================================================================

class KWRotatingMover extends KWMover;

var Rotator DefRotationRate;

state() TriggerToggle
{ 
}

state() MoverRotating
{
}

defaultproperties
{
     InitialState="MoverRotating"
     bFixedRotationDir=True
}
