Class DustLargeXpress extends Smoke_Dust;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter10
         UseCollision=True
         MaxCollisions=(Max=1.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=130,G=168,R=179))
         ColorScale(2)=(RelativeTime=1.000000)
         MaxParticles=20
         AutoResetTimeRange=(Min=1.000000,Max=1.000000)
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=25.000000,Max=50.000000)
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=-0.500000))
         SizeScale(0)=(RelativeSize=-5.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=1.000000,Max=50.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Smoke1'
         LifetimeRange=(Min=1.000000,Max=5.000000)
         StartVelocityRange=(X=(Min=50.000000,Max=-50.000000),Y=(Min=50.000000,Max=-50.000000),Z=(Min=50.000000,Max=-50.000000))
         VelocityLossRange=(X=(Min=1.000000,Max=1.000000),Y=(Min=1.000000,Max=1.000000),Z=(Min=1.000000,Max=1.000000))
         Name="SpriteEmitter10"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DustLargeXpress.SpriteEmitter10'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter7
         UseDirectionAs=PTDU_Scale
         Acceleration=(Z=-50.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=109,G=174,R=199))
         ColorScale(2)=(RelativeTime=1.000000)
         MaxParticles=20
         AutoResetTimeRange=(Min=1.000000,Max=1.000000)
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=25.000000,Max=50.000000)
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=-0.500000))
         SizeScale(0)=(RelativeSize=-5.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=0.500000,Max=2.000000),Y=(Min=1.000000,Max=5.000000))
         InitialParticlesPerSecond=5000.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Smoke1'
         LifetimeRange=(Max=8.000000)
         StartVelocityRange=(X=(Min=50.000000,Max=-50.000000),Y=(Min=50.000000,Max=-50.000000),Z=(Min=50.000000,Max=-100.000000))
         VelocityLossRange=(X=(Min=1.000000,Max=1.000000),Y=(Min=1.000000,Max=1.000000),Z=(Min=1.000000,Max=1.000000))
         Name="SpriteEmitter7"
     End Object
     Emitters(1)=SpriteEmitter'HGame.DustLargeXpress.SpriteEmitter7'
}
