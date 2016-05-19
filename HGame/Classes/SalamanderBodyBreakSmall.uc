Class SalamanderBodyBreakSmall extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter12
         Acceleration=(Z=40.000000)
         MaxCollisions=(Min=2.000000,Max=3.000000)
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.500000,Color=(B=255,G=128))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=192,G=192,R=192))
         ColorScaleRepeats=5.000000
         FadeOutStartTime=1.500000
         FadeOut=True
         FadeInEndTime=0.100000
         CoordinateSystem=PTCS_Relative
         MaxParticles=30
         EffectAxis=PTEA_PositiveZ
         SpinParticles=True
         SpinCCWorCW=(X=5.000000)
         SpinsPerSecondRange=(X=(Min=-2.000000,Max=2.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=0.100000)
         StartSizeRange=(X=(Min=5.000000,Max=10.000000),Y=(Min=5.000000,Max=5.000000),Z=(Min=5.000000,Max=5.000000))
         UniformSize=True
         UseSkeletalLocationAs=PTSU_SpawnOffset
         RelativeBoneIndexRange=(Min=0.300000)
         InitialParticlesPerSecond=500.000000
         Texture=Texture'HP_FX.Particles.Les_Sparkle_04'
         LifetimeRange=(Min=1.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=-30.000000))
         StartVelocityRadialRange=(Max=100.000000)
         GetVelocityDirectionFrom=PTVD_AddRadial
         Name="SpriteEmitter12"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SalamanderBodyBreakSmall.SpriteEmitter12'
     Begin Object Class=MeshEmitter Name=MeshEmitter2
         StaticMesh=StaticMesh'HP3_Particles_SM.Object_Pieces.BrokenIce_Piece_SM'
         Acceleration=(Z=-500.000000)
         UseCollision=True
         DampingFactorRange=(X=(Min=0.500000,Max=0.500000),Y=(Min=0.500000,Max=0.500000),Z=(Min=0.500000,Max=0.500000))
         UseMaxCollisions=True
         MaxCollisions=(Min=3.000000,Max=3.000000)
         FadeIn=True
         MaxParticles=7
         StartLocationRange=(X=(Min=-60.000000,Max=60.000000),Y=(Min=-15.000000,Max=15.000000),Z=(Max=5.000000))
         MeshSpawning=PTMS_Random
         MeshScaleRange=(X=(Min=0.100000,Max=0.500000),Y=(Min=0.100000,Max=0.500000),Z=(Min=0.100000,Max=0.500000))
         RevolutionCenterOffsetRange=(X=(Min=10.000000,Max=50.000000),Y=(Min=10.000000,Max=50.000000),Z=(Min=2.000000,Max=5.000000))
         RevolutionsPerSecondRange=(X=(Min=1.000000,Max=2.000000),Y=(Min=1.000000,Max=2.000000),Z=(Min=1.000000,Max=2.000000))
         UseRevolutionScale=True
         RevolutionScale(0)=(RelativeRevolution=(X=5.000000,Y=5.000000,Z=5.000000))
         RevolutionScale(1)=(RelativeTime=1.000000,RelativeRevolution=(X=0.250000,Y=0.250000,Z=0.250000))
         SpinParticles=True
         SpinsPerSecondRange=(Y=(Min=1.000000,Max=2.000000),Z=(Min=1.000000,Max=2.000000))
         DampRotation=True
         RotationDampingFactorRange=(X=(Min=0.500000,Max=1.000000),Y=(Min=0.500000,Max=1.000000),Z=(Min=0.500000,Max=1.000000))
         StartSizeRange=(X=(Max=0.500000),Y=(Max=2.000000))
         InitialParticlesPerSecond=150.000000
         Texture=Texture'HP3_Gameplay.Spell_Objects.Pumpkin'
         LifetimeRange=(Min=1.500000,Max=4.500000)
         StartVelocityRange=(X=(Min=-150.000000,Max=150.000000),Y=(Min=-150.000000,Max=150.000000),Z=(Min=80.000000,Max=400.000000))
         Name="MeshEmitter2"
     End Object
     Emitters(1)=MeshEmitter'HGame.SalamanderBodyBreakSmall.MeshEmitter2'
     bDirectional=True
}
