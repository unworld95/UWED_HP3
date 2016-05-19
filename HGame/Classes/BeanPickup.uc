Class BeanPickup extends Pickups;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter2
         Acceleration=(Z=5.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=213,G=68,R=140,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=252,G=95,R=111,A=255))
         FadeOutStartTime=0.495000
         FadeOut=True
         FadeInEndTime=0.090000
         FadeIn=True
         MaxParticles=30
         StartLocationRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000),Z=(Min=-5.000000,Max=5.000000))
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=0.250000,Max=1.000000))
         RevolutionScaleRepeats=2.000000
         SpinCCWorCW=(X=0.540000)
         SpinsPerSecondRange=(X=(Min=0.050000,Max=0.100000),Y=(Min=0.050000,Max=0.100000),Z=(Min=0.050000,Max=0.100000))
         RotationNormal=(X=100.000000,Y=100.000000,Z=110.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.870000)
         StartSizeRange=(X=(Min=2.000000,Max=10.000000),Y=(Min=2.000000,Max=6.000000),Z=(Min=2.000000,Max=6.000000))
         UniformSize=True
         InitialParticlesPerSecond=100.000000
         Texture=Texture'HP_FX.Particles.flare4'
         LifetimeRange=(Min=1.000000,Max=1.500000)
         StartVelocityRange=(X=(Min=-30.000000,Max=30.000000),Y=(Min=-30.000000,Max=30.000000),Z=(Min=-20.000000,Max=100.000000))
         Name="SpriteEmitter2"
     End Object
     Emitters(0)=SpriteEmitter'HGame.BeanPickup.SpriteEmitter2'
}
