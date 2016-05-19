Class ImpFireCracker extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter12
         Acceleration=(Z=20.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(R=255))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=255,G=136,R=17))
         ColorScale(2)=(RelativeTime=1.000000,Color=(G=255,R=255))
         FadeOutStartTime=0.600000
         FadeOut=True
         MaxParticles=40
         StartLocationRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-15.000000,Max=15.000000))
         SphereRadiusRange=(Min=1.000000,Max=15.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=-1.000000,Max=1.000000))
         UseRevolutionScale=True
         RevolutionScale(1)=(RelativeTime=0.330000)
         RevolutionScale(2)=(RelativeTime=0.400000,RelativeRevolution=(Z=3.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.250000,Max=0.500000))
         StartSizeRange=(X=(Min=2.000000,Max=3.000000))
         UniformSize=True
         InitialParticlesPerSecond=100.000000
         Texture=Texture'HP_FX.Particles.Les_Sparkle_04'
         LifetimeRange=(Min=1.000000,Max=0.250000)
         StartVelocityRange=(X=(Min=-30.000000,Max=30.000000),Y=(Min=-30.000000,Max=30.000000),Z=(Min=-10.000000,Max=30.000000))
         Name="SpriteEmitter12"
     End Object
     Emitters(0)=SpriteEmitter'HGame.ImpFireCracker.SpriteEmitter12'
}