//================================================================================
// KWBlockingVolume.
//================================================================================

class KWBlockingVolume extends BlockingVolume;

var() bool bTriggerToggles;
var() bool bToggleBlockingActors;
var() bool bToggleBlockingPlayers;
var() bool bToggleBlockingCamera;
var() bool bToggleCollideActors;

function Trigger (Actor Other, Pawn P)
{
}

defaultproperties
{
     bTriggerToggles=True
     bToggleBlockingPlayers=True
     bStatic=False
     bWorldGeometry=False
     bBlockActors=False
}
