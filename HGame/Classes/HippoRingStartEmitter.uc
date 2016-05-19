Class HippoRingStartEmitter extends HippoRingEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter85
         UseColorScale=True
         ColorScale(0)=(Color=(B=100,G=150,R=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=100,G=150,R=255))
         FadeOutStartTime=0.050000
         FadeInEndTime=0.050000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=100
         StartLocationShape=PTLS_Polar
         StartLocationPolarRange=(X=(Max=10.000000),Y=(Max=65535.000000),Z=(Min=200.000000,Max=200.000000))
         UseRevolution=True
         RevolutionsPerSecondRange=(X=(Min=-0.330000,Max=0.330000))
         UseRotationFrom=PTRS_Normal
         SpinParticles=True
         SpinCCWorCW=(X=5.000000)
         SpinsPerSecondRange=(X=(Min=1.500000,Max=2.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(Y=1.000000)
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=16.000000,Max=24.000000),Y=(Min=16.000000,Max=24.000000),Z=(Min=16.000000,Max=24.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.flare4'
         LifetimeRange=(Min=0.500000,Max=0.500000)
         StartVelocityRange=(X=(Min=-1.000000,Max=1.000000),Y=(Min=-1.000000,Max=1.000000),Z=(Min=-1.000000,Max=1.000000))
         Name="SpriteEmitter85"
     End Object
     Emitters(0)=SpriteEmitter'HGame.HippoRingStartEmitter.SpriteEmitter85'
     Emitters(1)=SpriteEmitter'HGame.HippoRingEmitter.SpriteEmitter3'
     Emitters(2)=SpriteEmitter'HGame.HippoRingEmitter.SpriteEmitter4'
}
