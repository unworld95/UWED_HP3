Class DementorsConverging extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter2
         ColorScale(0)=(Color=(B=255,G=128,R=255))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=126,G=58,R=41))
         ColorScale(2)=(RelativeTime=1.000000)
         FadeOutStartTime=0.500000
         FadeInEndTime=0.200000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=200
         StartLocationShape=PTLS_Polar
         SphereRadiusRange=(Min=100.000000,Max=100.000000)
         StartLocationPolarRange=(Y=(Max=65535.000000),Z=(Min=2000.000000,Max=5000.000000))
         UseRotationFrom=PTRS_Offset
         RotationOffset=(Roll=16384)
         SpinCCWorCW=(X=5.000000)
         SpinsPerSecondRange=(X=(Min=1.500000,Max=2.000000),Z=(Min=0.500000,Max=1.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=-100.000000,Max=-175.000000),Y=(Min=16.000000,Max=24.000000),Z=(Min=16.000000,Max=24.000000))
         UniformSize=True
         InitialParticlesPerSecond=1000.000000
         Texture=Texture'HP3_FX.Dementors.Dementor2_A00'
         LifetimeRange=(Min=10.000000,Max=10.000000)
         StartVelocityRange=(X=(Min=-1.000000,Max=1.000000),Y=(Min=-1.000000),Z=(Min=-1.000000,Max=1.000000))
         StartVelocityRadialRange=(Min=-200.000000,Max=-200.000000)
         GetVelocityDirectionFrom=PTVD_AddRadial
         Name="SpriteEmitter2"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DementorsConverging.SpriteEmitter2'
}
