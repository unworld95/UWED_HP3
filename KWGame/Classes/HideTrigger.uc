//================================================================================
// HideTrigger.
//================================================================================

class HideTrigger extends Trigger;

var(Trigger) bool bUnHide;
var bool bDoActionWhenTriggered;

function Activate (Actor Other, Pawn Instigator)
{
}

defaultproperties
{
     bDoActionWhenTriggered=True
}
