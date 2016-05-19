Class SwirlyBlob extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter22
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=54,G=218,R=181))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=52,G=163,R=46))
         ColorScale(3)=(RelativeTime=1.000000)
         MaxParticles=60
         StartLocationRange=(X=(Min=6.000000,Max=-6.000000),Y=(Min=6.000000,Max=-6.000000),Z=(Min=6.000000,Max=-6.000000))
         UseRevolution=True
         RevolutionsPerSecondRange=(X=(Min=0.100000,Max=0.300000),Y=(Min=0.100000,Max=0.100000))
         StartSizeRange=(X=(Min=2.000000,Max=8.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.flare4'
         LifetimeRange=(Max=8.000000)
         WarmupTicksPerSecond=1.000000
         RelativeWarmupTime=1.000000
         Name="SpriteEmitter22"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SwirlyBlob.SpriteEmitter22'
}
