//=============================================================================
// ClipMarker.
//
// These are markers for the brush clip mode.  You place 2 or 3 of these in
// the level and that defines your clipping plane.
//
// These should NOT be manually added to the level.  The editor adds and
// deletes them on it's own.
//
//=============================================================================
class ClipMarker extends Keypoint
	placeable;

#exec Texture Import File=Textures\S_ClipMarker.bmp Name=S_ClipMarker Mips=Off MASKED=1
#exec Texture Import File=Textures\S_ClipMarker1.bmp Name=S_ClipMarker1 Mips=Off MASKED=1
#exec Texture Import File=Textures\S_ClipMarker2.bmp Name=S_ClipMarker2 Mips=Off MASKED=1
#exec Texture Import File=Textures\S_ClipMarker3.bmp Name=S_ClipMarker3 Mips=Off MASKED=1

defaultproperties
{
     Texture=Texture'Engine.S_ClipMarker'
     bEdShouldSnap=True
}
