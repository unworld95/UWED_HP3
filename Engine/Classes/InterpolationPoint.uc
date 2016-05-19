//=============================================================================
// InterpolationPoint.
// Used as destinations to move the camera to in Matinee scenes.
//=============================================================================
class InterpolationPoint extends Keypoint;

#exec Texture Import File=Textures\S_Interp.bmp Name=S_Interp Mips=Off MASKED=1

defaultproperties
{
     Texture=Texture'Engine.S_Interp'
     bDirectional=True
}
