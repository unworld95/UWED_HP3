Class SpongifyTarget extends Spongify;

#exec Texture import File=Textures\SpongifyTargetTexture.bmp Name=SpongifyTargetTexture MASKED=1

var() string Label;

var Pawn PlayerHeroActor;
var(Reaction) Class<Projectile> vulnerableToClass;

defaultproperties
{
     DrawType=DT_Sprite
     Texture=Texture'HGame.SpongifyTargetTexture'
}
