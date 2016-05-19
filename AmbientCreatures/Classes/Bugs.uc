//================================================================================
// Bugs.
//================================================================================

class Bugs extends TransientAmbientCreature
  Abstract;

var float SwarmTightness;

defaultproperties
{
    SwarmTightness=0.80
    PredatorType=Class'WanderingBirds'
    bOffCameraSpawns=False
    NumSlaves=19
    SoundRadius=32.00
    SoundVolume=32
    CollisionRadius=50.00
    CollisionHeight=20.00
    bCollideWorld=True
}