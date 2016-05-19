Class LapiforsWandEmitter extends WandEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter24
         UseColorScale=True
         ColorScale(0)=(Color=(B=64,G=128))
         FadeOutStartTime=0.400000
         FadeOut=True
         MaxParticles=5
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         StartLocationShape=PTLS_Sphere
         RevolutionCenterOffsetRange=(X=(Min=15.000000,Max=20.000000))
         RevolutionsPerSecondRange=(Y=(Min=1.000000,Max=1.250000))
         SpinParticles=True
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         SizeScale(0)=(RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=3.000000)
         SizeScale(2)=(RelativeTime=0.800000,RelativeSize=0.100000)
         StartSizeRange=(X=(Min=1.000000,Max=1.000000))
         UniformSize=True
         InitialParticlesPerSecond=1.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.blob32'
         LifetimeRange=(Min=1.000000,Max=1.250000)
         StartVelocityRange=(X=(Min=-20.000000,Max=20.000000),Y=(Min=20.000000,Max=20.000000),Z=(Max=10.000000))
         AddVelocityMultiplierRange=(Z=(Max=5.000000))
         UseVelocityScale=True
         VelocityScale(0)=(RelativeTime=0.100000,RelativeVelocity=(Z=20.000000))
         VelocityScale(1)=(RelativeTime=0.300000,RelativeVelocity=(Z=-10.000000))
         VelocityScale(2)=(RelativeTime=0.500000,RelativeVelocity=(Z=20.000000))
         VelocityScale(3)=(RelativeTime=0.700000,RelativeVelocity=(Z=-10.000000))
         VelocityScale(4)=(RelativeTime=0.900000,RelativeVelocity=(Z=20.000000))
         Name="SpriteEmitter24"
     End Object
     Emitters(0)=SpriteEmitter'HGame.LapiforsWandEmitter.SpriteEmitter24'
     LightHue=80
     LightSaturation=70
}
