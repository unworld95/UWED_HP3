//================================================================================
// ChangeActorPropsTrigger.
//================================================================================

class ChangeActorPropsTrigger extends Trigger;

var() int iNewColActors;
var() int iNewBlockActors;
var() int iNewBlockPlayers;
var bool bDoActionWhenTriggered;

function Activate (Actor Other, Pawn Instigator)
{
}

defaultproperties
{
     bDoActionWhenTriggered=True
}
