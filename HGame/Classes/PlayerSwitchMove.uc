Class PlayerSwitchMove extends MenuFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter30
         ColorScale(0)=(Color=(R=255))
         ColorScale(1)=(RelativeTime=0.250000,Color=(R=255))
         ColorScale(2)=(RelativeTime=0.500000,Color=(B=128,G=255,R=255))
         ColorScale(3)=(RelativeTime=0.750000,Color=(R=255))
         ColorScale(4)=(RelativeTime=1.000000,Color=(R=255))
         FadeOutStartTime=0.150000
         FadeOut=True
         MaxParticles=100
         AutoReset=True
         AutoResetTimeRange=(Min=2.000000,Max=2.000000)
         StartLocationRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000),Z=(Min=-2.000000,Max=2.000000))
         SphereRadiusRange=(Min=65536.000000,Max=65536.000000)
         StartLocationPolarRange=(X=(Min=65536.000000,Max=65536.000000),Y=(Max=65536.000000),Z=(Min=50.000000,Max=50.000000))
         UseRevolution=True
         RevolutionsPerSecondRange=(X=(Min=-1.000000,Max=1.000000),Y=(Min=-1.000000,Max=1.000000))
         SpinParticles=True
         SpinCCWorCW=(X=-5.000000)
         SpinsPerSecondRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.500000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=1.000000,Max=2.000000),Y=(Min=1.000000,Max=1.000000),Z=(Min=1.000000,Max=1.000000))
         UniformSize=True
         InitialParticlesPerSecond=100.000000
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         LifetimeRange=(Min=1.000000,Max=1.000000)
         StartVelocityRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=-50.000000,Max=50.000000))
         VelocityLossRange=(X=(Min=1.000000,Max=3.000000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         Name="SpriteEmitter30"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PlayerSwitchMove.SpriteEmitter30'
}
