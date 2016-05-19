//================================================================================
// AmbientSoundActor.
//================================================================================

class AmbientSoundActor extends Actor Placeable;

var() bool bPlayAlways;
var() bool bPlayFromStart;
var() byte AmbientSoundVolume;

auto state AmbientSoundActor
{
  event Trigger (Actor Other, Pawn EventInstigator)
  {
  }
}

defaultproperties
{
     AmbientSoundVolume=128
     bHidden=True
     Texture=Texture'KWGame.AmbientSoundTrig'
     CollisionRadius=1.000000
     CollisionHeight=1.000000
}
