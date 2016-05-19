Class GroundCreatureController extends CreatureController;

var float fTimeSinceLastDecision;
var() float fTimeBeforeStall;
var bool bForceStall;
var float NavStallTime;

defaultproperties
{
     fTimeBeforeStall=0.500000
     InitialState="StateCreatureMoving"
}
