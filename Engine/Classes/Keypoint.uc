//=============================================================================
// Keypoint, the base class of invisible actors which mark things.
//=============================================================================
class Keypoint extends Actor
	abstract
	placeable;

// Sprite.
#exec Texture Import File=Textures\S_Keypoint.bmp Name=S_Keypoint Mips=Off MASKED=1

defaultproperties
{
     bStatic=True
     bHidden=True
     Texture=Texture'Engine.S_Keypoint'
     SoundVolume=0
     CollisionRadius=10.000000
     CollisionHeight=10.000000
}
