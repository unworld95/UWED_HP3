Class SecretAreaMarker extends Trigger;

#exec Texture import File=Textures\SecretTexture.bmp Name=SecretTexture

var() bool bUseCollision;
var bool bFound;
var Sound FoundSound;

defaultproperties
{
     bUseCollision=True
     FoundSound=Sound'SoundEffects.Magic.found_secret_window'
     Texture=Texture'HGame.SecretTexture'
}
