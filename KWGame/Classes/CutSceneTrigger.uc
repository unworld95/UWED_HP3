//================================================================================
// CutSceneTrigger.
//================================================================================

class CutSceneTrigger extends KWTrigger;

var name AlternateEvent;
var bool bDoAlternateEvent;

event PostPersistentDataRestored ()
{
}

state StateNothing
{
}

function Activate (Actor Other, Pawn Instigator)
{
}

defaultproperties
{
     bTriggerOnceOnly=True
     Texture=Texture'KWGame.cutscenetriggericon'
}
