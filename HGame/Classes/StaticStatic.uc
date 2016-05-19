Class StaticStatic extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=240,G=165,R=102))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=213,G=136,R=215))
         ColorScale(3)=(RelativeTime=1.000000)
         ColorScaleRepeats=5.000000
         MaxParticles=200
         StartLocationRange=(X=(Min=-9.000000,Max=9.000000),Y=(Min=-9.000000,Max=9.000000),Z=(Min=-12.000000,Max=12.000000))
         StartLocationPolarRange=(X=(Min=-15.000000,Max=15.000000),Y=(Min=-15.000000,Max=15.000000),Z=(Min=15.000000,Max=-15.000000))
         StartSizeRange=(X=(Min=2.000000,Max=4.000000))
         UniformSize=True
         Texture=FireTexture'HP_FX.Spells.Win_U'
         LifetimeRange=(Min=2.000000)
         StartVelocityRange=(Z=(Min=-3.000000,Max=3.000000))
         WarmupTicksPerSecond=1.000000
         RelativeWarmupTime=1.000000
         Name="SpriteEmitter0"
     End Object
     Emitters(0)=SpriteEmitter'HGame.StaticStatic.SpriteEmitter0'
}
