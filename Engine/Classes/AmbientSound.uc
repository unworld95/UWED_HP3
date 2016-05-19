//=============================================================================
// Ambient sound, sits there and emits its sound.  This class is no different 
// than placing any other actor in a level and setting its ambient sound.
//=============================================================================
class AmbientSound extends UWKeypoint;

// Import the sprite.
#exec Texture Import File=Textures\S_Ambient.bmp Name=S_Ambient Mips=Off MASKED=1

defaultproperties
{
     RemoteRole=ROLE_None
     Texture=Texture'Engine.S_Ambient'
     SoundVolume=190
}
