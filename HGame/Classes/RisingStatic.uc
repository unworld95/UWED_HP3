Class RisingStatic extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter22
         Acceleration=(Z=-3.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=255,G=255))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=128,G=64))
         ColorScale(3)=(RelativeTime=1.000000)
         MaxParticles=60
         StartLocationRange=(X=(Min=5.000000,Max=-5.000000),Y=(Min=5.000000,Max=-5.000000),Z=(Min=-2.000000,Max=2.000000))
         RevolutionsPerSecondRange=(X=(Min=0.100000,Max=-0.500000),Y=(Min=0.100000,Max=0.100000))
         StartSizeRange=(X=(Min=2.000000,Max=5.000000))
         UniformSize=True
         Texture=FireTexture'HP_FX.Particles.F_spark'
         LifetimeRange=(Max=8.000000)
         StartVelocityRange=(Z=(Min=10.000000,Max=15.000000))
         WarmupTicksPerSecond=1.000000
         RelativeWarmupTime=1.000000
         Name="SpriteEmitter22"
     End Object
     Emitters(0)=SpriteEmitter'HGame.RisingStatic.SpriteEmitter22'
}
