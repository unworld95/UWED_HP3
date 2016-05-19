//================================================================================
// BounceTarget.
//================================================================================

class BounceTarget extends BounceObject
  Config(User);

function PreBeginPlay ()
{
  SetCollision(False,False,False);
}

defaultproperties
{
     bStatic=True
     bHidden=True
     Texture=Texture'KWGame.SpongifyTargetTexture'
     CollisionRadius=16.000000
     CollisionHeight=16.000000
     bCollideActors=False
     bCollideWorld=False
     bBlockActors=False
     bBlockPlayers=False
}
