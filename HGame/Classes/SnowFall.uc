Class SnowFall extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter14
         FadeOutStartTime=25.000000
         FadeOut=True
         FadeInEndTime=1.000000
         FadeIn=True
         MaxParticles=250
         StartLocationRange=(X=(Min=-384.000000,Max=384.000000),Y=(Min=-384.000000,Max=384.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.250000,Max=1.000000))
         StartSizeRange=(X=(Min=1.000000,Max=5.000000))
         UniformSize=True
         ParticlesPerSecond=5.000000
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         TextureUSubdivisions=1
         TextureVSubdivisions=1
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=30.000000,Max=30.000000)
         StartVelocityRange=(X=(Min=-20.000000,Max=20.000000),Y=(Min=-20.000000,Max=20.000000),Z=(Min=-50.000000,Max=-10.000000))
         WarmupTicksPerSecond=10.000000
         RelativeWarmupTime=10.000000
         Name="SpriteEmitter14"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SnowFall.SpriteEmitter14'
}
