Class SwirlingLights extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter21
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=17,G=202,R=255))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=75,G=177,R=239))
         ColorScale(3)=(RelativeTime=1.000000)
         MaxParticles=30
         StartLocationRange=(X=(Min=10.000000,Max=-10.000000),Y=(Min=10.000000,Max=-10.000000),Z=(Min=10.000000,Max=-10.000000))
         UseRevolution=True
         RevolutionsPerSecondRange=(X=(Min=0.100000,Max=0.300000),Y=(Min=0.100000,Max=0.100000))
         StartSizeRange=(X=(Min=2.000000,Max=4.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.flare4'
         LifetimeRange=(Max=8.000000)
         WarmupTicksPerSecond=1.000000
         RelativeWarmupTime=1.000000
         Name="SpriteEmitter21"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SwirlingLights.SpriteEmitter21'
}
