Class HippoRingHit extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter84
         UseColorScale=True
         ColorScale(0)=(Color=(B=255,G=128,R=255))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=126,G=58,R=41))
         ColorScale(2)=(RelativeTime=1.000000)
         FadeOutStartTime=0.500000
         FadeInEndTime=0.200000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=50
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=100.000000,Max=100.000000)
         StartLocationPolarRange=(X=(Max=10.000000),Y=(Max=65535.000000),Z=(Min=100.000000,Max=100.000000))
         UseRotationFrom=PTRS_Normal
         SpinParticles=True
         SpinCCWorCW=(X=5.000000)
         SpinsPerSecondRange=(X=(Min=1.500000,Max=2.000000),Z=(Min=0.500000,Max=1.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(Y=1.000000)
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=16.000000,Max=24.000000),Y=(Min=16.000000,Max=24.000000),Z=(Min=16.000000,Max=24.000000))
         UniformSize=True
         InitialParticlesPerSecond=75.000000
         Texture=Texture'HP_FX.Particles.flare4'
         LifetimeRange=(Min=1.100000,Max=1.100000)
         StartVelocityRange=(X=(Min=-1.000000,Max=1.000000),Y=(Min=-1.000000),Z=(Min=-1.000000,Max=1.000000))
         StartVelocityRadialRange=(Min=-100.000000,Max=-100.000000)
         GetVelocityDirectionFrom=PTVD_AddRadial
         Name="SpriteEmitter84"
     End Object
     Emitters(0)=SpriteEmitter'HGame.HippoRingHit.SpriteEmitter84'
}
