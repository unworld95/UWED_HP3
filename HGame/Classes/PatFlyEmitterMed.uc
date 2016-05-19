Class PatFlyEmitterMed extends SpellFlyEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter4
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.100000,Color=(B=255,G=255,R=255))
         ColorScale(1)=(RelativeTime=0.600000,Color=(B=255,G=128))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=255,G=128))
         FadeOutStartTime=0.500000
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
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=5.000000)
         StartSizeRange=(X=(Min=1.500000,Max=1.500000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         UniformSize=True
         ParticlesPerSecond=15.000000
         Texture=Texture'HP_FX.Particles.swirl001'
         LifetimeRange=(Min=0.500000,Max=0.500000)
         UseVelocityScale=True
         VelocityScaleRepeats=1.000000
         Name="SpriteEmitter4"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PatFlyEmitterMed.SpriteEmitter4'
     Begin Object Class=SparkEmitter Name=SparkEmitter1
         LineSegmentsRange=(Min=20.000000,Max=20.000000)
         TimeBetweenSegmentsRange=(Min=0.010000,Max=0.010000)
         MaxParticles=50
         InitialParticlesPerSecond=200.000000
         Texture=Texture'HP3_FX.Particles.ConfettiPiece'
         LifetimeRange=(Min=1.000000,Max=1.000000)
         StartVelocityRange=(X=(Min=-40.000000,Max=40.000000),Y=(Min=-40.000000,Max=40.000000),Z=(Min=-40.000000,Max=40.000000))
         Name="SparkEmitter1"
     End Object
     Emitters(1)=SparkEmitter'HGame.PatFlyEmitterMed.SparkEmitter1'
}
