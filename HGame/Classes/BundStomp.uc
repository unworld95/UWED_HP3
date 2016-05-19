Class BundStomp extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter13
         Acceleration=(Z=25.000000)
         UseCollision=True
         MaxCollisions=(Max=1.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=130,G=168,R=179))
         ColorScale(2)=(RelativeTime=1.000000)
         MaxParticles=30
         AutoResetTimeRange=(Min=1.000000,Max=1.000000)
         StartLocationRange=(X=(Min=-20.000000,Max=20.000000),Y=(Min=-20.000000,Max=20.000000))
         SphereRadiusRange=(Min=5.000000,Max=10.000000)
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=-0.500000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=0.500000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=1.500000)
         StartSizeRange=(X=(Min=5.000000,Max=10.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Smoke1'
         LifetimeRange=(Min=1.000000,Max=1.500000)
         StartVelocityRange=(X=(Min=-200.000000,Max=200.000000),Y=(Min=-200.000000,Max=200.000000))
         VelocityLossRange=(X=(Min=4.500000,Max=4.500000),Y=(Min=4.500000,Max=4.500000),Z=(Min=1.000000,Max=1.000000))
         Name="SpriteEmitter13"
     End Object
     Emitters(0)=SpriteEmitter'HGame.BundStomp.SpriteEmitter13'
}
