Class ChestOpen extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter5
         Acceleration=(X=5.000000,Y=5.000000,Z=-50.000000)
         UseMaxCollisions=True
         MaxCollisions=(Min=1.000000,Max=3.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=14,G=200,R=254,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=91,G=169,R=255,A=255))
         FadeOutStartTime=0.495000
         FadeOut=True
         FadeInEndTime=0.090000
         FadeIn=True
         MaxParticles=40
         StartLocationRange=(X=(Min=-20.000000,Max=20.000000),Y=(Min=-1.000000,Max=1.000000),Z=(Min=-1.000000,Max=1.000000))
         RevolutionsPerSecondRange=(Z=(Min=0.250000,Max=1.000000))
         RevolutionScaleRepeats=2.000000
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=1.000000,Max=3.000000),Y=(Min=0.050000,Max=0.100000),Z=(Min=0.050000,Max=0.100000))
         RotationNormal=(X=100.000000,Y=100.000000,Z=110.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.870000)
         StartSizeRange=(X=(Min=2.000000,Max=10.000000),Y=(Min=2.000000,Max=6.000000),Z=(Min=2.000000,Max=6.000000))
         UniformSize=True
         InitialParticlesPerSecond=500.000000
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         LifetimeRange=(Min=1.000000,Max=3.000000)
         StartVelocityRange=(X=(Max=40.000000),Y=(Max=41.000000),Z=(Min=50.000000,Max=75.000000))
         Name="SpriteEmitter5"
     End Object
     Emitters(0)=SpriteEmitter'HGame.ChestOpen.SpriteEmitter5'
}
