Class CarpeWandEmitter extends WandEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         ColorScale(0)=(Color=(B=255,G=128))
         ColorScale(1)=(RelativeTime=0.250000,Color=(B=255,G=128))
         ColorScale(2)=(RelativeTime=0.500000,Color=(B=192,G=192,R=192))
         ColorScale(3)=(RelativeTime=0.750000,Color=(B=255,G=255,R=255))
         FadeOutStartTime=0.400000
         FadeOut=True
         MaxParticles=20
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         StartLocationShape=PTLS_Sphere
         UseRevolution=True
         RevolutionCenterOffsetRange=(X=(Min=15.000000,Max=20.000000))
         RevolutionsPerSecondRange=(Y=(Min=1.000000,Max=1.250000))
         SpinParticles=True
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=3.000000)
         SizeScale(2)=(RelativeTime=0.800000,RelativeSize=0.100000)
         StartSizeRange=(X=(Min=1.000000,Max=1.000000))
         UniformSize=True
         InitialParticlesPerSecond=1.000000
         Texture=Texture'HP_FX.Particles.Dot_1'
         LifetimeRange=(Min=0.750000,Max=1.000000)
         Name="SpriteEmitter0"
     End Object
     Emitters(0)=SpriteEmitter'HGame.CarpeWandEmitter.SpriteEmitter0'
     LightHue=200
     LightSaturation=70
}
