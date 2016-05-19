Class PeevesMace extends SpellFlyEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter48
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.950000,Color=(B=27,G=228,R=148))
         ColorScale(2)=(RelativeTime=1.000000)
         MaxParticles=75
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=15.000000,Max=15.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(X=(Min=-1.000000,Max=1.000000),Y=(Min=1.000000,Max=-1.000000),Z=(Min=1.000000,Max=-1.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-2.000000,Max=2.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=0.500000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=10.000000)
         StartSizeRange=(X=(Min=1.000000,Max=1.000000))
         UniformSize=True
         InitialParticlesPerSecond=50.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Dot_Neutral'
         LifetimeRange=(Min=2.000000,Max=2.000000)
         Name="SpriteEmitter48"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PeevesMace.SpriteEmitter48'
}
