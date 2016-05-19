Class PixieBallExplode extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter2
         Acceleration=(Z=-64.000000)
         DampingFactorRange=(Z=(Min=0.100000,Max=0.500000))
         MaxCollisions=(Min=2.000000,Max=3.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=255,G=255,R=255))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=114,G=114,R=184))
         ColorScale(3)=(RelativeTime=1.000000)
         MaxParticles=40
         StartLocationRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000),Z=(Min=-2.000000,Max=2.000000))
         StartLocationShape=PTLS_Sphere
         StartLocationPolarRange=(Y=(Min=50.000000,Max=50.000000),Z=(Min=50.000000,Max=50.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-0.750000,Max=0.750000))
         StartSizeRange=(X=(Min=2.000000,Max=6.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Les_Sparkle_01'
         LifetimeRange=(Min=2.000000)
         StartVelocityRange=(X=(Min=-10.000000,Max=30.000000),Y=(Min=-10.000000,Max=30.000000),Z=(Min=25.000000,Max=64.000000))
         VelocityLossRange=(Z=(Min=0.500000,Max=1.000000))
         VelocityScale(0)=(RelativeVelocity=(Z=-120.000000))
         VelocityScale(1)=(RelativeTime=0.500000,RelativeVelocity=(Z=120.000000))
         VelocityScale(2)=(RelativeTime=0.750000,RelativeVelocity=(X=20.000000,Y=20.000000))
         Name="SpriteEmitter2"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PixieBallExplode.SpriteEmitter2'
     LightBrightness=200.000000
     LightHue=160
     LightSaturation=10
}
