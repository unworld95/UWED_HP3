Class DementorGroundHalo extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         Acceleration=(Z=-5.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.350000,Color=(B=243,G=117,R=80))
         ColorScale(2)=(RelativeTime=0.700000,Color=(B=243,G=117,R=80))
         ColorScale(3)=(RelativeTime=1.000000)
         FadeOutStartTime=3.000000
         FadeInEndTime=1.000000
         MaxParticles=75
         DisableFogging=True
         AutoResetTimeRange=(Min=0.500000,Max=0.500000)
         StartLocationOffset=(Y=70.000000)
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         StartLocationShape=PTLS_Polar
         SphereRadiusRange=(Min=-64.000000,Max=-64.000000)
         StartLocationPolarRange=(Y=(Max=65536.000000),Z=(Min=75.000000,Max=100.000000))
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=-0.005000,Max=0.005000))
         UseRotationFrom=PTRS_Offset
         SpinParticles=True
         RotationOffset=(Roll=16802)
         SpinsPerSecondRange=(X=(Min=-0.050000,Max=0.100000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         StartSizeRange=(X=(Min=25.000000,Max=50.000000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'EmitterTextures.MultiFrame.LargeFlames-grey'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         UseRandomSubdivision=True
         LifetimeRange=(Min=1.000000,Max=1.000000)
         ResetOnTrigger=True
         StartVelocityRadialRange=(Min=-10.000000,Max=-50.000000)
         GetVelocityDirectionFrom=PTVD_AddRadial
         Name="SpriteEmitter0"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DementorGroundHalo.SpriteEmitter0'
}
