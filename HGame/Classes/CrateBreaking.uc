Class CrateBreaking extends Smoke_Dust;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter12
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
         Name="SpriteEmitter12"
     End Object
     Emitters(0)=SpriteEmitter'HGame.CrateBreaking.SpriteEmitter12'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter13
         UseDirectionAs=PTDU_Scale
         Acceleration=(Z=-5.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=24,G=111,R=188))
         ColorScale(2)=(RelativeTime=1.000000)
         MaxParticles=100
         AutoResetTimeRange=(Min=1.000000,Max=1.000000)
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=25.000000,Max=50.000000)
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=-0.500000))
         SizeScale(0)=(RelativeSize=-5.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=0.500000,Max=0.500000),Y=(Min=0.500000,Max=0.500000))
         InitialParticlesPerSecond=20.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.Particles.TinySparkles'
         LifetimeRange=(Min=0.250000,Max=1.000000)
         StartVelocityRange=(X=(Min=-2.000000,Max=2.000000),Y=(Min=-2.000000,Max=2.000000))
         VelocityLossRange=(X=(Min=1.000000,Max=1.000000),Y=(Min=1.000000,Max=1.000000),Z=(Min=1.000000,Max=1.000000))
         Name="SpriteEmitter13"
     End Object
     Emitters(1)=SpriteEmitter'HGame.CrateBreaking.SpriteEmitter13'
     Begin Object Class=MeshEmitter Name=MeshEmitter6
         Acceleration=(Z=-900.000000)
         UseCollision=True
         ExtentMultiplier=(X=1.500000,Y=1.500000)
         DampingFactorRange=(X=(Min=0.500000,Max=0.500000),Y=(Min=0.500000,Max=0.500000),Z=(Min=0.500000,Max=0.500000))
         MaxCollisions=(Min=2.000000,Max=2.000000)
         MeshSpawning=PTMS_Random
         MeshScaleRange=(X=(Min=0.250000,Max=0.500000),Y=(Min=0.250000,Max=0.500000),Z=(Min=0.250000,Max=0.500000))
         RevolutionCenterOffsetRange=(X=(Min=10.000000,Max=50.000000),Y=(Min=10.000000,Max=50.000000),Z=(Min=2.000000,Max=5.000000))
         RevolutionsPerSecondRange=(X=(Min=1.000000,Max=2.000000),Y=(Min=1.000000,Max=2.000000),Z=(Min=1.000000,Max=2.000000))
         UseRevolutionScale=True
         RevolutionScale(0)=(RelativeRevolution=(X=5.000000,Y=5.000000,Z=5.000000))
         RevolutionScale(1)=(RelativeTime=1.000000,RelativeRevolution=(X=0.250000,Y=0.250000,Z=0.250000))
         SpinParticles=True
         SpinsPerSecondRange=(Y=(Min=1.000000,Max=2.000000),Z=(Min=1.000000,Max=2.000000))
         DampRotation=True
         RotationDampingFactorRange=(X=(Min=0.500000,Max=1.000000),Y=(Min=0.500000,Max=1.000000),Z=(Min=0.500000,Max=1.000000))
         InitialParticlesPerSecond=100.000000
         LifetimeRange=(Min=1.500000,Max=2.250000)
         StartVelocityRange=(X=(Min=-150.000000,Max=150.000000),Y=(Min=-150.000000,Max=150.000000),Z=(Min=250.000000,Max=750.000000))
         Name="MeshEmitter6"
     End Object
     Emitters(2)=MeshEmitter'HGame.CrateBreaking.MeshEmitter6'
     Begin Object Class=MeshEmitter Name=MeshEmitter7
         Acceleration=(Z=-900.000000)
         UseCollision=True
         ExtentMultiplier=(X=1.500000,Y=1.500000)
         DampingFactorRange=(X=(Min=0.500000,Max=0.500000),Y=(Min=0.500000,Max=0.500000),Z=(Min=0.500000,Max=0.500000))
         MaxCollisions=(Min=2.000000,Max=2.000000)
         MeshSpawning=PTMS_Random
         MeshScaleRange=(X=(Min=0.250000,Max=0.500000),Y=(Min=0.250000,Max=0.500000),Z=(Min=0.250000,Max=0.500000))
         RevolutionCenterOffsetRange=(X=(Min=10.000000,Max=50.000000),Y=(Min=10.000000,Max=50.000000),Z=(Min=2.000000,Max=5.000000))
         RevolutionsPerSecondRange=(X=(Min=1.000000,Max=2.000000),Y=(Min=1.000000,Max=2.000000),Z=(Min=1.000000,Max=2.000000))
         UseRevolutionScale=True
         RevolutionScale(0)=(RelativeRevolution=(X=5.000000,Y=5.000000,Z=5.000000))
         RevolutionScale(1)=(RelativeTime=1.000000,RelativeRevolution=(X=0.250000,Y=0.250000,Z=0.250000))
         SpinParticles=True
         SpinsPerSecondRange=(Y=(Min=1.000000,Max=2.000000),Z=(Min=1.000000,Max=2.000000))
         DampRotation=True
         RotationDampingFactorRange=(X=(Min=0.500000,Max=1.000000),Y=(Min=0.500000,Max=1.000000),Z=(Min=0.500000,Max=1.000000))
         InitialParticlesPerSecond=100.000000
         LifetimeRange=(Min=1.500000,Max=2.250000)
         StartVelocityRange=(X=(Min=-150.000000,Max=150.000000),Y=(Min=-150.000000,Max=150.000000),Z=(Min=250.000000,Max=750.000000))
         Name="MeshEmitter7"
     End Object
     Emitters(3)=MeshEmitter'HGame.CrateBreaking.MeshEmitter7'
}
