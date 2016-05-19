Class PumpkinExplode extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter17
         Acceleration=(Z=-80.000000)
         DampingFactorRange=(Z=(Min=0.100000,Max=0.500000))
         UseMaxCollisions=True
         MaxCollisions=(Min=2.000000,Max=3.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=6,G=249,R=255,A=255))
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=221,G=255,R=255,A=255))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=35,G=182,R=252,A=128))
         ColorScale(3)=(RelativeTime=1.000000,Color=(G=53,R=164))
         MaxParticles=12
         StartLocationRange=(X=(Min=5.000000,Max=-5.000000),Y=(Min=5.000000,Max=-5.000000))
         StartLocationPolarRange=(Y=(Min=50.000000,Max=50.000000),Z=(Min=50.000000,Max=50.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-1.000000,Max=1.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=5.000000)
         SizeScale(1)=(RelativeTime=1.000000)
         StartSizeRange=(X=(Min=5.000000,Max=5.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         Texture=Texture'HP_FX.Particles.SepiaFlamefx'
         LifetimeRange=(Min=1.500000,Max=2.500000)
         StartVelocityRange=(X=(Min=-40.000000,Max=40.000000),Y=(Min=-40.000000,Max=40.000000),Z=(Max=80.000000))
         VelocityScale(0)=(RelativeVelocity=(Z=-120.000000))
         VelocityScale(1)=(RelativeTime=0.500000,RelativeVelocity=(Z=120.000000))
         VelocityScale(2)=(RelativeTime=0.750000,RelativeVelocity=(X=20.000000,Y=20.000000))
         Name="SpriteEmitter17"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PumpkinExplode.SpriteEmitter17'
     Begin Object Class=MeshEmitter Name=MeshEmitter23
         StaticMesh=StaticMesh'HP3_Particles_SM.Object_Pieces.PumpkinPiece_SM'
         Acceleration=(Z=-900.000000)
         UseCollision=True
         ExtentMultiplier=(X=1.500000,Y=1.500000)
         DampingFactorRange=(X=(Min=0.500000,Max=0.500000),Y=(Min=0.500000,Max=0.500000),Z=(Min=0.500000,Max=0.500000))
         MaxCollisions=(Min=2.000000,Max=2.000000)
         FadeIn=True
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
         Texture=Texture'HP3_Gameplay.Spell_Objects.Pumpkin'
         LifetimeRange=(Min=1.500000,Max=2.250000)
         StartVelocityRange=(X=(Min=-150.000000,Max=150.000000),Y=(Min=-150.000000,Max=150.000000),Z=(Min=250.000000,Max=750.000000))
         Name="MeshEmitter23"
     End Object
     Emitters(1)=MeshEmitter'HGame.PumpkinExplode.MeshEmitter23'
}
