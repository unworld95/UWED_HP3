Class GlaciusFeetEffect extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter91
         UseDirectionAs=PTDU_Scale
         ColorMultiplierRange=(X=(Min=128.000000,Max=128.000000),Y=(Min=128.000000,Max=128.000000))
         FadeOutStartTime=0.750000
         FadeOut=True
         MaxParticles=30
         StartLocationRange=(X=(Max=10.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.800000,RelativeSize=1.000000)
         SizeScale(2)=(RelativeTime=1.000000)
         StartSizeRange=(X=(Min=0.500000,Max=1.000000),Y=(Min=3.000000,Max=10.000000))
         UniformSize=True
         ParticlesPerSecond=25.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.Particles.TinySparkles'
         LifetimeRange=(Min=0.250000,Max=0.250000)
         StartVelocityRange=(X=(Max=-100.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=300.000000,Max=350.000000))
         Name="SpriteEmitter91"
     End Object
     Emitters(0)=SpriteEmitter'HGame.GlaciusFeetEffect.SpriteEmitter91'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter100
         FadeOutStartTime=0.200000
         FadeOut=True
         FadeInEndTime=0.150000
         FadeIn=True
         MaxParticles=30
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.250000,RelativeSize=0.500000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=3.000000,Max=5.000000))
         UniformSize=True
         ParticlesPerSecond=25.000000
         Texture=Texture'HP3_FX.Particles.Smoke1'
         LifetimeRange=(Min=0.250000,Max=0.250000)
         StartVelocityRange=(X=(Min=-100.000000),Y=(Min=-30.000000,Max=30.000000),Z=(Min=300.000000,Max=350.000000))
         Name="SpriteEmitter100"
     End Object
     Emitters(1)=SpriteEmitter'HGame.GlaciusFeetEffect.SpriteEmitter100'
}
