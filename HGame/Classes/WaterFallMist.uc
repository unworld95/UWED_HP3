Class WaterFallMist extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter29
         Acceleration=(Z=-3.000000)
         FadeOutStartTime=2.000000
         FadeOut=True
         FadeInEndTime=0.100000
         FadeIn=True
         MaxParticles=200
         StartLocationRange=(X=(Min=-16.000000,Max=16.000000),Y=(Min=-64.000000,Max=64.000000),Z=(Max=16.000000))
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=10.000000)
         StartSizeRange=(X=(Min=5.000000,Max=20.000000))
         UniformSize=True
         ParticlesPerSecond=5.000000
         Texture=Texture'HP3_FX.MultiFrame.SmokeSequence'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         UseRandomSubdivision=True
         LifetimeRange=(Min=3.000000)
         StartVelocityRange=(X=(Min=-20.000000,Max=20.000000),Y=(Min=-20.000000,Max=20.000000),Z=(Min=5.000000,Max=30.000000))
         WarmupTicksPerSecond=10.000000
         RelativeWarmupTime=10.000000
         Name="SpriteEmitter29"
     End Object
     Emitters(0)=SpriteEmitter'HGame.WaterFallMist.SpriteEmitter29'
}
