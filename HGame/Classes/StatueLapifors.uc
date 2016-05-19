Class StatueLapifors extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter32
         UseColorScale=True
         ColorScale(0)=(Color=(B=64,G=128,R=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=64,G=128,R=255))
         FadeOutStartTime=9.000000
         FadeOut=True
         FadeInEndTime=0.500000
         FadeIn=True
         MaxParticles=16
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=16.000000,Max=16.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=0.100000,Max=1.000000))
         SpinsPerSecondRange=(X=(Min=0.500000,Max=3.000000),Y=(Min=0.500000,Max=3.000000))
         StartSizeRange=(X=(Min=2.000000,Max=4.000000),Y=(Min=2.000000,Max=4.000000),Z=(Min=2.000000,Max=4.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.blob32'
         LifetimeRange=(Min=0.500000,Max=0.500000)
         StartVelocityRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000),Z=(Min=-1.000000,Max=1.000000))
         UseVelocityScale=True
         VelocityScale(0)=(RelativeTime=0.100000,RelativeVelocity=(Z=75.000000))
         VelocityScale(1)=(RelativeTime=0.500000,RelativeVelocity=(Z=-75.000000))
         VelocityScale(2)=(RelativeTime=1.000000,RelativeVelocity=(Z=75.000000))
         VelocityScaleRepeats=20.000000
         WarmupTicksPerSecond=5.000000
         RelativeWarmupTime=5.000000
         Name="SpriteEmitter32"
     End Object
     Emitters(0)=SpriteEmitter'HGame.StatueLapifors.SpriteEmitter32'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter33
         ColorMultiplierRange=(X=(Min=128.000000,Max=128.000000))
         FadeOutStartTime=0.200000
         FadeOut=True
         FadeInEndTime=0.100000
         FadeIn=True
         MaxParticles=15
         StartLocationOffset=(Z=-30.000000)
         StartLocationRange=(X=(Min=-20.000000,Max=20.000000),Y=(Min=-20.000000,Max=20.000000),Z=(Max=60.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-1.000000,Max=1.000000))
         StartSizeRange=(X=(Min=0.500000,Max=1.500000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         LifetimeRange=(Min=0.250000,Max=0.250000)
         StartVelocityRange=(Z=(Min=10.000000,Max=20.000000))
         Name="SpriteEmitter33"
     End Object
     Emitters(1)=SpriteEmitter'HGame.StatueLapifors.SpriteEmitter33'
     AttachTag="StatueLapifors"
}
