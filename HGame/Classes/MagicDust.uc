Class MagicDust extends EnvironmentFX;

#exec Texture import File=Textures\Les_Sparkle_04.bmp Name=Les_Sparkle_04 Group=HP_FX.Particles MASKED=1

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter5
         Acceleration=(Z=15.000000)
         ColorMultiplierRange=(X=(Min=255.000000,Max=255.000000))
         FadeOutStartTime=0.250000
         FadeOut=True
         MaxParticles=100
         StartLocationRange=(X=(Min=-128.000000,Max=128.000000),Y=(Min=-64.000000,Max=64.000000),Z=(Min=-256.000000,Max=256.000000))
         StartSizeRange=(X=(Min=0.200000,Max=0.300000),Y=(Min=1.000000,Max=1.000000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Les_Sparkle_04'
         LifetimeRange=(Min=0.250000,Max=0.500000)
         Name="SpriteEmitter5"
     End Object
     Emitters(0)=SpriteEmitter'HGame.MagicDust.SpriteEmitter5'
}
