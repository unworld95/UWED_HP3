Class PatFlyEmitterMax extends SpellFlyEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.100000,Color=(B=255,G=255,R=255))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=255,G=255,R=255))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255))
         FadeOutStartTime=0.350000
         FadeOut=True
         FadeInEndTime=0.100000
         FadeIn=True
         MaxParticles=25
         UseRevolution=True
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=1.000000,Max=1.000000))
         StartSpinRange=(X=(Min=-5.000000,Max=5.000000))
         RotationNormal=(X=1.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=3.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=8.000000)
         StartSizeRange=(X=(Min=2.000000,Max=2.000000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         UniformSize=True
         ParticlesPerSecond=15.000000
         Texture=Texture'HP_FX.Particles.swirl001'
         LifetimeRange=(Min=1.000000,Max=1.000000)
         UseVelocityScale=True
         VelocityScaleRepeats=1.000000
         Name="SpriteEmitter0"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PatFlyEmitterMax.SpriteEmitter0'
     Begin Object Class=SparkEmitter Name=SparkEmitter0
         LineSegmentsRange=(Min=100.000000,Max=100.000000)
         TimeBetweenSegmentsRange=(Min=0.005000,Max=0.005000)
         FadeOutStartTime=1.000000
         FadeOut=True
         MaxParticles=100
         InitialParticlesPerSecond=200.000000
         Texture=Texture'HP_FX.Particles.swirl001'
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-100.000000,Max=100.000000),Y=(Min=-100.000000,Max=100.000000),Z=(Min=-100.000000,Max=100.000000))
         Name="SparkEmitter0"
     End Object
     Emitters(1)=SparkEmitter'HGame.PatFlyEmitterMax.SparkEmitter0'
}
