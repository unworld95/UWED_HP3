Class CR_ObeliskEmitter extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter23
         UseColorScale=True
         ColorScale(0)=(Color=(B=253,G=128,R=222))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=125,G=38,R=92))
         MaxParticles=64
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=16.000000,Max=16.000000)
         UseRevolution=True
         RevolutionCenterOffsetRange=(X=(Min=5.000000,Max=5.000000),Z=(Min=1.000000,Max=1.000000))
         RevolutionsPerSecondRange=(Z=(Min=0.500000,Max=2.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=3.000000),Y=(Min=0.500000,Max=3.000000))
         StartSizeRange=(X=(Min=2.000000,Max=4.000000),Y=(Min=2.000000,Max=4.000000),Z=(Min=2.000000,Max=4.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.Sparkle_8'
         LifetimeRange=(Min=10.000000,Max=10.000000)
         StartVelocityRange=(X=(Min=30.000000,Max=30.000000),Y=(Min=30.000000,Max=30.000000))
         Name="SpriteEmitter23"
     End Object
     Emitters(1)=SpriteEmitter'HGame.CR_ObeliskEmitter.SpriteEmitter23'
}
