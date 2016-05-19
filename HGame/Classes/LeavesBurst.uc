Class LeavesBurst extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter2
         Acceleration=(Z=-40.000000)
         UseCollision=True
         UseMaxCollisions=True
         MaxCollisions=(Min=2.000000,Max=2.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=78,G=173,R=87))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=55,G=157,R=61))
         MaxParticles=50
         AutoReset=True
         AutoResetTimeRange=(Min=1.000000,Max=1.000000)
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=5.000000,Max=10.000000)
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=1.000000),Y=(Min=0.500000,Max=0.500000),Z=(Min=0.500000,Max=0.500000))
         UseSizeScale=True
         SizeScale(1)=(RelativeTime=0.990000)
         SizeScale(2)=(RelativeTime=1.000000)
         StartSizeRange=(X=(Min=6.000000,Max=12.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.leaf'
         LifetimeRange=(Min=6.000000,Max=10.000000)
         StartVelocityRange=(X=(Min=-150.000000,Max=150.000000),Y=(Min=-150.000000,Max=150.000000),Z=(Min=-200.000000,Max=200.000000))
         VelocityLossRange=(X=(Min=2.000000,Max=2.000000),Y=(Min=2.000000,Max=2.000000),Z=(Min=2.000000,Max=2.000000))
         Name="SpriteEmitter2"
     End Object
     Emitters(0)=SpriteEmitter'HGame.LeavesBurst.SpriteEmitter2'
}
