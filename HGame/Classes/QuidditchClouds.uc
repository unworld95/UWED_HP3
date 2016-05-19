Class QuidditchClouds extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         FadeOutStartTime=0.500000
         FadeOut=True
         FadeInEndTime=0.200000
         FadeIn=True
         MaxParticles=1000
         StartLocationRange=(Y=(Min=-7500.000000,Max=7500.000000),Z=(Min=-1000.000000,Max=1000.000000))
         StartSizeRange=(X=(Max=500.000000))
         UniformSize=True
         ParticlesPerSecond=5.000000
         Texture=Texture'HP3_FX.MultiFrame.SmokeSequence'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         UseRandomSubdivision=True
         LifetimeRange=(Min=25.000000,Max=30.000000)
         StartVelocityRange=(X=(Min=-100.000000,Max=-400.000000))
         RelativeWarmupTime=10.000000
         Name="SpriteEmitter0"
     End Object
     Emitters(0)=SpriteEmitter'HGame.QuidditchClouds.SpriteEmitter0'
}
