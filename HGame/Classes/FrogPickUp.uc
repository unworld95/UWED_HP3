Class FrogPickUp extends Pickups;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter2
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=223,G=85,R=171,A=255))
         ColorScale(2)=(RelativeTime=0.500000,Color=(B=247,G=81,R=85))
         ColorScale(3)=(RelativeTime=1.000000,Color=(B=214,G=60,R=27,A=255))
         FadeOutStartTime=1.500000
         FadeOut=True
         MaxParticles=30
         StartLocationPolarRange=(X=(Max=10.000000),Y=(Max=50.000000),Z=(Max=10.000000))
         UseRevolution=True
         RevolutionCenterOffsetRange=(X=(Min=15.000000,Max=15.000000))
         RevolutionsPerSecondRange=(Z=(Min=0.200000,Max=1.000000))
         SpinParticles=True
         SpinCCWorCW=(X=0.540000)
         SpinsPerSecondRange=(X=(Min=-0.500000,Max=1.000000),Y=(Min=0.050000,Max=0.100000),Z=(Min=0.050000,Max=0.100000))
         SizeScale(1)=(RelativeTime=0.750000,RelativeSize=-5.000000)
         StartSizeRange=(X=(Min=2.000000,Max=12.000000),Y=(Min=2.000000,Max=6.000000),Z=(Min=2.000000,Max=6.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         Texture=Texture'HP_FX.Particles.Sparkle_1'
         StartVelocityRange=(X=(Min=-40.000000,Max=40.000000),Y=(Min=-40.000000,Max=40.000000),Z=(Min=10.000000,Max=10.000000))
         VelocityLossRange=(X=(Min=2.000000,Max=2.000000),Y=(Min=2.000000,Max=2.000000))
         Name="SpriteEmitter2"
     End Object
     Emitters(0)=SpriteEmitter'HGame.FrogPickUp.SpriteEmitter2'
}
