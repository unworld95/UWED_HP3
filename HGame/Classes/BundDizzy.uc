Class BundDizzy extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter23
         UseColorScale=True
         ColorScale(0)=(Color=(B=64,G=128,R=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=64,G=128,R=255))
         MaxParticles=16
         StartLocationOffset=(Z=25.000000)
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=16.000000,Max=16.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=0.100000,Max=1.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=3.000000),Y=(Min=0.500000,Max=3.000000))
         StartSizeRange=(X=(Min=2.000000,Max=4.000000),Y=(Min=2.000000,Max=4.000000),Z=(Min=2.000000,Max=4.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.Sparkle_8'
         LifetimeRange=(Min=3.000000,Max=3.000000)
         WarmupTicksPerSecond=5.000000
         RelativeWarmupTime=5.000000
         Name="SpriteEmitter23"
     End Object
     Emitters(0)=SpriteEmitter'HGame.BundDizzy.SpriteEmitter23'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter26
         UseColorScale=True
         ColorScale(0)=(Color=(B=253,G=128,R=222))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=125,G=38,R=92))
         MaxParticles=16
         StartLocationOffset=(Z=25.000000)
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=16.000000,Max=16.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=-0.100000,Max=-1.000000))
         UseRevolutionScale=True
         RevolutionScale(0)=(RelativeRevolution=(Z=1.000000))
         RevolutionScale(1)=(RelativeTime=0.500000)
         RevolutionScale(2)=(RelativeTime=1.000000,RelativeRevolution=(Z=-1.000000))
         RevolutionScaleRepeats=3.000000
         SpinsPerSecondRange=(X=(Min=0.500000,Max=3.000000),Y=(Min=0.500000,Max=3.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=4.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=1.000000)
         SizeScaleRepeats=5.000000
         StartSizeRange=(X=(Min=-2.000000,Max=-4.000000),Y=(Min=2.000000,Max=4.000000),Z=(Min=2.000000,Max=4.000000))
         UniformSize=True
         Texture=Texture'SpellShapes.Shapes.SPSrictusempra'
         LifetimeRange=(Min=5.000000,Max=5.000000)
         UseVelocityScale=True
         WarmupTicksPerSecond=5.000000
         RelativeWarmupTime=5.000000
         Name="SpriteEmitter26"
     End Object
     Emitters(1)=SpriteEmitter'HGame.BundDizzy.SpriteEmitter26'
}
