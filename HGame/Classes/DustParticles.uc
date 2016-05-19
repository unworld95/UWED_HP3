Class DustParticles extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter1
         FadeOutStartTime=2.500000
         FadeOut=True
         FadeInEndTime=0.500000
         FadeIn=True
         MaxParticles=100
         StartLocationRange=(X=(Min=-32.000000,Max=32.000000),Y=(Min=-128.000000,Max=128.000000),Z=(Min=-96.000000,Max=96.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Max=0.250000))
         StartSizeRange=(X=(Min=1.000000,Max=1.500000),Y=(Min=1.000000,Max=1.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.DustParticles'
         TextureUSubdivisions=2
         TextureVSubdivisions=2
         UseRandomSubdivision=True
         LifetimeRange=(Min=3.000000)
         StartVelocityRange=(X=(Min=-3.000000,Max=3.000000),Y=(Min=-3.000000,Max=3.000000),Z=(Min=-3.000000,Max=3.000000))
         Name="SpriteEmitter1"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DustParticles.SpriteEmitter1'
}
