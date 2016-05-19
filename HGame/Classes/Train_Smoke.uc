Class Train_Smoke extends Smoke_Dust;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter13
         Acceleration=(Z=35.000000)
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=128,G=128,R=128))
         ColorScale(2)=(RelativeTime=1.000000)
         FadeOutStartTime=3.500000
         FadeOut=True
         MaxParticles=200
         StartLocationOffset=(Z=10.000000)
         StartLocationRange=(X=(Min=-6.000000,Max=6.000000),Y=(Min=-6.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.400000,Max=0.400000),Y=(Min=0.400000,Max=0.400000),Z=(Min=0.400000,Max=0.400000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.300000,RelativeSize=4.000000)
         SizeScale(2)=(RelativeTime=0.600000,RelativeSize=6.000000)
         SizeScale(3)=(RelativeTime=1.000000,RelativeSize=9.000000)
         StartSizeRange=(X=(Min=8.000000,Max=18.000000),Y=(Min=8.000000,Max=18.000000),Z=(Min=15.000000,Max=15.000000))
         UniformSize=True
         ParticlesPerSecond=16.000000
         DrawStyle=PTDS_AlphaBlend
         Texture=Texture'HP3_FX.Particles.SmokeGrey'
         LifetimeRange=(Max=5.000000)
         StartVelocityRange=(Y=(Min=50.000000,Max=80.000000),Z=(Min=50.000000,Max=200.000000))
         WarmupTicksPerSecond=1.000000
         RelativeWarmupTime=1.000000
         Name="SpriteEmitter13"
     End Object
     Emitters(0)=SpriteEmitter'HGame.Train_Smoke.SpriteEmitter13'
     AttachTag="Train"
     bHardAttach=True
}
