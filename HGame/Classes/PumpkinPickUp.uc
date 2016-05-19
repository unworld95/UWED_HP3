Class PumpkinPickUp extends Pickups;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter22
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.100000,Color=(B=64,G=128,R=255))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=223,G=85,R=171,A=255))
         ColorScale(2)=(RelativeTime=0.650000,Color=(G=128))
         ColorScale(3)=(RelativeTime=1.000000,Color=(G=128,A=255))
         FadeOutStartTime=1.500000
         FadeOut=True
         MaxParticles=30
         StartLocationPolarRange=(X=(Max=10.000000),Y=(Max=50.000000),Z=(Max=10.000000))
         UseRevolution=True
         RevolutionCenterOffsetRange=(X=(Min=15.000000,Max=15.000000))
         RevolutionsPerSecondRange=(Z=(Min=0.200000,Max=1.000000))
         SpinParticles=True
         SpinCCWorCW=(X=0.540000)
         SpinsPerSecondRange=(X=(Min=2.000000,Max=5.000000),Y=(Min=0.050000,Max=0.100000),Z=(Min=0.050000,Max=0.100000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.850000,RelativeSize=0.100000)
         StartSizeRange=(X=(Min=2.000000,Max=12.000000),Y=(Min=2.000000,Max=6.000000),Z=(Min=2.000000,Max=6.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         Texture=Texture'HP_FX.Particles.Sparkle_1'
         StartVelocityRange=(X=(Min=-75.000000,Max=75.000000),Y=(Min=-75.000000,Max=75.000000),Z=(Min=10.000000,Max=25.000000))
         VelocityLossRange=(X=(Min=2.000000,Max=2.000000),Y=(Min=2.000000,Max=2.000000))
         Name="SpriteEmitter22"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PumpkinPickUp.SpriteEmitter22'
}
