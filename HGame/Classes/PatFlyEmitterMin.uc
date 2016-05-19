Class PatFlyEmitterMin extends SpellFlyEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter103
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.100000,Color=(B=255,G=128))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=255,G=128))
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
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=2.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=3.000000)
         StartSizeRange=(X=(Min=1.500000,Max=1.500000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         UniformSize=True
         ParticlesPerSecond=15.000000
         Texture=Texture'HP_FX.Particles.swirl001'
         LifetimeRange=(Min=0.500000,Max=0.500000)
         UseVelocityScale=True
         VelocityScaleRepeats=1.000000
         Name="SpriteEmitter103"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PatFlyEmitterMin.SpriteEmitter103'
     Begin Object Class=SparkEmitter Name=SparkEmitter4
         LineSegmentsRange=(Min=3.000000,Max=3.000000)
         TimeBetweenSegmentsRange=(Min=0.150000,Max=0.150000)
         CoordinateSystem=PTCS_Relative
         MaxParticles=30
         InitialParticlesPerSecond=200.000000
         Texture=Texture'HP3_FX.Particles.ConfettiPiece'
         LifetimeRange=(Min=0.500000,Max=0.500000)
         StartVelocityRange=(X=(Min=-20.000000,Max=20.000000),Y=(Min=-20.000000,Max=20.000000),Z=(Min=-20.000000,Max=20.000000))
         Name="SparkEmitter4"
     End Object
     Emitters(1)=SparkEmitter'HGame.PatFlyEmitterMin.SparkEmitter4'
}
