Class DraconiforsTorch extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter36
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.400000,Color=(B=91,G=218,R=255))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=30,G=91,R=255))
         ColorScale(3)=(RelativeTime=1.000000)
         MaxParticles=60
         Disabled=True
         StartLocationRange=(X=(Min=-3.000000,Max=3.000000),Y=(Min=-3.000000,Max=3.000000))
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=0.200000,Max=0.500000))
         SpinParticles=True
         SpinCCWorCW=(X=0.250000,Y=0.250000,Z=0.250000)
         SpinsPerSecondRange=(X=(Min=0.150000,Max=0.350000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.200000,RelativeSize=1.000000)
         SizeScale(2)=(RelativeTime=0.600000,RelativeSize=1.000000)
         SizeScale(3)=(RelativeTime=1.000000)
         StartSizeRange=(X=(Min=6.000000,Max=12.000000))
         UniformSize=True
         Texture=Texture'EmitterTextures.MultiFrame.LargeFlamesBW'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=1.500000,Max=3.750000)
         InitialDelayRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(Z=(Min=15.000000,Max=40.000000))
         Name="SpriteEmitter36"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DraconiforsTorch.SpriteEmitter36'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter37
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.050000,Color=(B=30,G=187,R=247))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=66,G=114,R=255))
         ColorScale(3)=(RelativeTime=1.000000)
         FadeInEndTime=0.200000
         FadeIn=True
         MaxParticles=100
         Disabled=True
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=25.000000,Max=25.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=-4.000000,Max=4.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.200000,Max=0.500000))
         StartSizeRange=(X=(Min=5.000000,Max=20.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.flare4'
         LifetimeRange=(Min=1.500000,Max=2.000000)
         Name="SpriteEmitter37"
     End Object
     Emitters(1)=SpriteEmitter'HGame.DraconiforsTorch.SpriteEmitter37'
     Begin Object Class=SparkEmitter Name=SparkEmitter2
         LineSegmentsRange=(Min=0.100000,Max=0.100000)
         TimeBetweenSegmentsRange=(Min=0.010000,Max=0.100000)
         Acceleration=(Z=-100.000000)
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.100000,Color=(B=64,G=128,R=255))
         ColorScale(1)=(RelativeTime=0.500000,Color=(R=255))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=128,G=255,R=255))
         MaxParticles=300
         Disabled=True
         InitialParticlesPerSecond=500.000000
         Texture=Texture'HP3_FX.Particles.ConfettiPiece'
         SecondsBeforeInactive=2.000000
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-200.000000,Max=200.000000),Y=(Min=-200.000000,Max=200.000000),Z=(Max=200.000000))
         Name="SparkEmitter2"
     End Object
     Emitters(2)=SparkEmitter'HGame.DraconiforsTorch.SparkEmitter2'
     AmbientSound=Sound'SoundEffects.common.firepit01'
     SoundRadius=100.000000
     SoundVolume=150
}
