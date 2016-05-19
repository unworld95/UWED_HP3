Class PixieBall extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter15
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=255,G=107,R=100))
         ColorScale(2)=(RelativeTime=0.300000,Color=(B=221,G=214,R=66))
         ColorScale(3)=(RelativeTime=0.500000,Color=(B=234,G=81,R=138))
         ColorScale(4)=(RelativeTime=7.000000,Color=(B=255,G=71,R=45))
         ColorScale(5)=(RelativeTime=0.900000,Color=(B=255,G=193,R=111))
         ColorScale(6)=(RelativeTime=1.000000)
         ColorScaleRepeats=3.000000
         CoordinateSystem=PTCS_Relative
         MaxParticles=50
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=7.000000,Max=7.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(X=(Min=-1.000000,Max=1.000000),Y=(Min=-1.000000,Max=1.000000),Z=(Min=-1.000000,Max=1.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=0.500000))
         StartSizeRange=(X=(Min=5.000000,Max=8.000000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Les_Sparkle_01'
         WarmupTicksPerSecond=1.000000
         RelativeWarmupTime=1.000000
         Name="SpriteEmitter15"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PixieBall.SpriteEmitter15'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter21
         Acceleration=(Z=6.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=227,G=55,R=36))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=216,G=146,R=39))
         ColorScale(3)=(RelativeTime=1.000000)
         StartLocationRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=5.000000,Max=-5.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-0.500000,Max=0.500000))
         StartSizeRange=(X=(Min=3.000000,Max=6.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.Les_Sparkle_01'
         LifetimeRange=(Min=1.000000,Max=2.000000)
         Name="SpriteEmitter21"
     End Object
     Emitters(1)=SpriteEmitter'HGame.PixieBall.SpriteEmitter21'
}
