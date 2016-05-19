Class QuidditchRain extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SparkEmitter Name=SparkEmitter0
         LineSegmentsRange=(Min=0.100000,Max=0.200000)
         TimeBetweenSegmentsRange=(Min=0.050000,Max=0.200000)
         ColorScale(0)=(Color=(B=160))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=160))
         FadeOut=True
         MaxParticles=1000
         StartLocationRange=(X=(Min=-3500.000000,Max=3500.000000),Y=(Min=-7500.000000,Max=7500.000000),Z=(Min=-400.000000,Max=400.000000))
         Texture=Texture'HP3_FX.Particles.Sparkle_8'
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-400.000000,Max=-500.000000),Z=(Min=-1500.000000,Max=-2500.000000))
         Name="SparkEmitter0"
     End Object
     Emitters(0)=SparkEmitter'HGame.QuidditchRain.SparkEmitter0'
}
