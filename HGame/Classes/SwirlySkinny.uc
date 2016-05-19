Class SwirlySkinny extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter21
         Acceleration=(X=1.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=17,G=202,R=255))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=75,G=177,R=239))
         ColorScale(3)=(RelativeTime=1.000000)
         MaxParticles=50
         StartLocationRange=(X=(Min=-1.000000,Max=1.000000),Y=(Min=-1.000000,Max=1.000000),Z=(Min=-15.000000,Max=15.000000))
         RevolutionsPerSecondRange=(X=(Min=0.100000,Max=0.300000),Y=(Min=0.100000,Max=0.100000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=10.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=0.100000)
         StartSizeRange=(X=(Min=2.000000,Max=4.000000))
         UniformSize=True
         Texture=FireTexture'HP_FX.Particles.Flip_Wheel'
         LifetimeRange=(Min=2.000000)
         StartVelocityRange=(X=(Max=-3.000000))
         WarmupTicksPerSecond=1.000000
         RelativeWarmupTime=1.000000
         Name="SpriteEmitter21"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SwirlySkinny.SpriteEmitter21'
}
