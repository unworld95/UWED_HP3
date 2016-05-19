Class MaraudersPickup extends Pickups;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter37
         Acceleration=(X=20.000000,Y=20.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=64,G=64,R=128,A=255))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=64,G=64,R=128))
         ColorScale(3)=(RelativeTime=1.000000,Color=(B=64,G=64,R=128,A=255))
         FadeOutStartTime=3.000000
         FadeOut=True
         FadeInEndTime=0.500000
         FadeIn=True
         MaxParticles=50
         StartLocationOffset=(X=10.000000,Y=10.000000,Z=-40.000000)
         StartLocationRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000),Z=(Min=-10.000000,Max=10.000000))
         StartLocationShape=PTLS_Polar
         StartLocationPolarRange=(Z=(Max=64.000000))
         UseRevolution=True
         RevolutionCenterOffsetRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000),Z=(Min=-128.000000,Max=256.000000))
         RevolutionsPerSecondRange=(Z=(Min=0.200000,Max=1.000000))
         SpinParticles=True
         SpinCCWorCW=(X=0.540000)
         SpinsPerSecondRange=(X=(Min=-0.500000,Max=1.000000),Y=(Min=0.050000,Max=0.100000),Z=(Min=0.050000,Max=0.100000))
         SizeScale(1)=(RelativeTime=0.750000,RelativeSize=-5.000000)
         StartSizeRange=(X=(Min=2.000000,Max=6.000000),Y=(Min=2.000000,Max=6.000000),Z=(Min=2.000000,Max=6.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         Texture=Texture'HP_FX.Particles.Les_Sparkle_04'
         StartVelocityRange=(X=(Min=-40.000000,Max=64.000000),Y=(Min=-40.000000,Max=64.000000),Z=(Min=10.000000,Max=10.000000))
         VelocityLossRange=(X=(Min=2.000000,Max=2.000000),Y=(Min=2.000000,Max=2.000000))
         Name="SpriteEmitter37"
     End Object
     Emitters(0)=SpriteEmitter'HGame.MaraudersPickup.SpriteEmitter37'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter38
         UseColorScale=True
         ColorScale(0)=(RelativeTime=1.000000,Color=(B=167,G=46,R=64))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=38,G=237,R=242))
         ColorScaleRepeats=1.000000
         FadeOutFactor=(W=1.500000,X=1.500000,Y=1.500000,Z=1.500000)
         FadeOutStartTime=2.000000
         FadeOut=True
         FadeInEndTime=0.500000
         FadeIn=True
         MaxParticles=50
         StartLocationRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000),Z=(Min=-20.000000,Max=20.000000))
         RevolutionsPerSecondRange=(X=(Min=1.000000,Max=2.000000),Y=(Min=1.000000,Max=2.000000),Z=(Min=-1.000000,Max=1.000000))
         SpinParticles=True
         StartSizeRange=(X=(Min=1.000000,Max=5.000000),Y=(Min=1.000000,Max=5.000000),Z=(Min=1.000000,Max=5.000000))
         UniformSize=True
         InitialParticlesPerSecond=200.000000
         Texture=Texture'HP3_FX.Particles.Sparkle_1'
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000),Z=(Min=-200.000000,Max=200.000000))
         VelocityLossRange=(Z=(Min=2.000000,Max=2.000000))
         UseVelocityScale=True
         Name="SpriteEmitter38"
     End Object
     Emitters(1)=SpriteEmitter'HGame.MaraudersPickup.SpriteEmitter38'
}
