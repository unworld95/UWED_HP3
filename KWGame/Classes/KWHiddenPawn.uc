//================================================================================
// KWHiddenPawn.
//================================================================================

class KWHiddenPawn extends KWPawn
  Config(User);

defaultproperties
{
     bHidden=True
     Texture=Texture'KWGame.HidPawn'
     CollisionRadius=10.000000
     CollisionHeight=10.000000
     bCollideActors=False
     bBlockActors=False
     bBlockPlayers=False
}
