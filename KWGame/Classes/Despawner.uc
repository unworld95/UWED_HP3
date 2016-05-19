//================================================================================
// Despawner.
//================================================================================

class Despawner extends KWPawn
  Config(User);



var(Collision) const float CollisionWidth;		// Y of collision box.
var(Collision) const float CollisionHeight;		// Half-height cyllinder.
  
var() name EventName;
var() bool bForceDespawn;
var() float fDespawnTime;

function Touch (Actor Other)
{
}

defaultproperties
{
     CollisionWidth=30.000000
     CollisionHeight=30.000000
     bHidden=True
     Texture=Texture'Engine.S_Keypoint'
     CollisionRadius=30.000000
     bBlockActors=False
     bBlockPlayers=False
     bProjTarget=False
}
