//=============================================================================
// LookTarget
//
// A convenience actor that you can point a matinee camera at.
//
// Isn't bStatic so you can attach these to movers and such.
//
//=============================================================================
class LookTarget extends Keypoint;

// Sprite.
#exec Texture Import File=Textures\S_LookTarget.bmp Name=S_LookTarget Mips=Off MASKED=1

defaultproperties
{
     bStatic=False
     bNoDelete=True
     Texture=Texture'Engine.S_LookTarget'
}
