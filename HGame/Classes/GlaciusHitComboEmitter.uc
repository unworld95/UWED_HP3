Class GlaciusHitComboEmitter extends HitComboEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter5
         Acceleration=(Z=-50.000000)
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.100000,Color=(B=255,G=255,R=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=128))
         FadeOutStartTime=2.500000
         FadeOut=True
         MaxParticles=30
         UseRotationFrom=PTRS_Offset
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-10.000000,Max=10.000000))
         RotationDampingFactorRange=(X=(Min=5.000000,Max=5.000000))
         StartSizeRange=(X=(Min=2.000000,Max=4.000000))
         UniformSize=True
         InitialParticlesPerSecond=150.000000
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         LifetimeRange=(Min=2.000000,Max=3.000000)
         StartVelocityRange=(X=(Min=-80.000000,Max=80.000000),Y=(Min=-80.000000,Max=80.000000),Z=(Min=-20.000000,Max=100.000000))
         UseVelocityScale=True
         VelocityScale(0)=(RelativeVelocity=(X=1.000000,Y=1.000000,Z=1.000000))
         VelocityScale(1)=(RelativeTime=0.400000,RelativeVelocity=(X=1.000000,Y=1.000000,Z=1.000000))
         VelocityScale(2)=(RelativeTime=0.420000)
         VelocityScale(3)=(RelativeTime=1.000000)
         Name="SpriteEmitter5"
     End Object
     Emitters(0)=SpriteEmitter'HGame.GlaciusHitComboEmitter.SpriteEmitter5'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter6
         UseColorScale=True
         ColorScale(0)=(Color=(B=255,G=255,R=255))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=255,G=128))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255))
         FadeOutStartTime=4.000000
         FadeOut=True
         FadeInEndTime=0.250000
         FadeIn=True
         MaxParticles=20
         StartLocationOffset=(Z=25.000000)
         StartLocationRange=(X=(Min=-25.000000,Max=25.000000),Y=(Min=-25.000000,Max=25.000000),Z=(Min=-30.000000,Max=30.000000))
         UseRevolution=True
         RevolutionCenterOffsetRange=(Z=(Min=-10.000000,Max=10.000000))
         RevolutionsPerSecondRange=(Z=(Min=-0.250000,Max=0.250000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-1.000000,Max=1.000000))
         StartSizeRange=(X=(Min=2.000000,Max=4.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         LifetimeRange=(Max=6.000000)
         StartVelocityRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000),Z=(Min=-3.000000,Max=5.000000))
         UseVelocityScale=True
         VelocityScale(0)=(RelativeVelocity=(X=5.000000,Y=-5.000000,Z=-10.000000))
         VelocityScale(1)=(RelativeTime=1.000000,RelativeVelocity=(X=-5.000000,Y=5.000000,Z=-5.000000))
         VelocityScale(2)=(RelativeTime=0.660000,RelativeVelocity=(X=5.000000,Y=-5.000000,Z=-2.000000))
         VelocityScale(3)=(RelativeTime=1.000000,RelativeVelocity=(X=-5.000000,Y=5.000000))
         VelocityScaleRepeats=2.000000
         RelativeWarmupTime=2.000000
         Name="SpriteEmitter6"
     End Object
     Emitters(1)=SpriteEmitter'HGame.GlaciusHitComboEmitter.SpriteEmitter6'
     LightHue=140
     LightSaturation=70
}
