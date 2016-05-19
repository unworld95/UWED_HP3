Class DementorsRingMist extends Smoke_Dust;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         ColorMultiplierRange=(X=(Min=150.000000,Max=150.000000),Y=(Min=100.000000,Max=100.000000))
         FadeOutStartTime=3.000000
         FadeOut=True
         FadeInEndTime=1.000000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=500
         DisableFogging=True
         AutoResetTimeRange=(Min=0.500000,Max=0.500000)
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         StartLocationShape=PTLS_Polar
         SphereRadiusRange=(Min=65536.000000,Max=65536.000000)
         StartLocationPolarRange=(Y=(Max=65536.000000),Z=(Min=650.000000,Max=750.000000))
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=-0.005000,Max=0.005000))
         UseRotationFrom=PTRS_Offset
         RotationOffset=(Roll=16802)
         SpinsPerSecondRange=(X=(Min=-20.000000,Max=20.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         StartSizeRange=(X=(Min=50.000000,Max=75.000000))
         UniformSize=True
         ParticlesPerSecond=100.000000
         InitialParticlesPerSecond=100.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.MultiFrame.SmokeSequence'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         UseRandomSubdivision=True
         ResetOnTrigger=True
         StartVelocityRadialRange=(Min=-100.000000)
         GetVelocityDirectionFrom=PTVD_AddRadial
         Name="SpriteEmitter0"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DementorsRingMist.SpriteEmitter0'
     bSuperHighDetail=True
     bDisableSorting=True
     Tag="DementorsRing2"
}
