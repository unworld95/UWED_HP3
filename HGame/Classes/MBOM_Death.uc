Class MBOM_Death extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter46
         UseCollision=True
         MaxCollisions=(Max=1.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=130,G=168,R=179))
         ColorScale(2)=(RelativeTime=1.000000)
         MaxParticles=20
         AutoResetTimeRange=(Min=1.000000,Max=1.000000)
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=5.000000,Max=10.000000)
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=-0.500000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=0.500000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=1.000000,Max=30.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Smoke1'
         LifetimeRange=(Min=1.000000,Max=5.000000)
         StartVelocityRange=(X=(Min=50.000000,Max=-50.000000),Y=(Min=50.000000,Max=-50.000000),Z=(Min=50.000000,Max=-50.000000))
         VelocityLossRange=(X=(Min=1.000000,Max=1.000000),Y=(Min=1.000000,Max=1.000000),Z=(Min=1.000000,Max=1.000000))
         Name="SpriteEmitter46"
     End Object
     Emitters(0)=SpriteEmitter'HGame.MBOM_Death.SpriteEmitter46'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter47
         UseDirectionAs=PTDU_Scale
         Acceleration=(Z=-30.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=24,G=111,R=188))
         ColorScale(2)=(RelativeTime=1.000000)
         ColorMultiplierRange=(X=(Max=20.000000))
         FadeOutStartTime=1.000000
         FadeOut=True
         MaxParticles=60
         AutoResetTimeRange=(Min=1.000000,Max=1.000000)
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=4.000000,Max=5.000000)
         UseRotationFrom=PTRS_Normal
         SpinParticles=True
         SpinCCWorCW=(X=1.000000)
         SpinsPerSecondRange=(X=(Min=-2.000000,Max=2.000000))
         RotationDampingFactorRange=(X=(Min=-10.000000,Max=10.000000))
         SizeScale(0)=(RelativeSize=-5.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=2.750000,Max=3.250000),Y=(Min=0.775000,Max=1.250000))
         InitialParticlesPerSecond=5000.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.Particles.ConfettiPiece'
         LifetimeRange=(Max=8.000000)
         InitialDelayRange=(Min=0.250000,Max=0.250000)
         StartVelocityRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=75.000000,Max=200.000000))
         VelocityLossRange=(X=(Min=1.000000,Max=1.000000),Y=(Min=1.000000,Max=1.000000),Z=(Min=2.000000,Max=3.000000))
         Name="SpriteEmitter47"
     End Object
     Emitters(1)=SpriteEmitter'HGame.MBOM_Death.SpriteEmitter47'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter48
         Acceleration=(Z=-70.000000)
         MaxParticles=20
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-3.000000,Max=3.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=0.050000)
         StartSizeRange=(X=(Min=4.000000,Max=8.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         Texture=Texture'HP3_FX.Particles.MBoMTear'
         TextureUSubdivisions=2
         TextureVSubdivisions=2
         LifetimeRange=(Min=3.000000)
         StartVelocityRange=(X=(Min=-60.000000,Max=60.000000),Y=(Min=-60.000000,Max=60.000000),Z=(Min=60.000000,Max=150.000000))
         VelocityLossRange=(X=(Max=2.000000),Y=(Max=2.000000),Z=(Max=2.000000))
         Name="SpriteEmitter48"
     End Object
     Emitters(2)=SpriteEmitter'HGame.MBOM_Death.SpriteEmitter48'
}
