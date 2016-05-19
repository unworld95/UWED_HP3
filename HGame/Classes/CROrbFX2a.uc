Class CROrbFX2a extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter30
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=238,G=62,R=97))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=238,G=62,R=97))
         ColorScale(3)=(RelativeTime=1.000000)
         CoordinateSystem=PTCS_Relative
         MaxParticles=100
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=11.000000,Max=11.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(X=(Min=-0.500000,Max=0.500000),Y=(Min=-0.500000,Max=0.500000),Z=(Min=-0.500000,Max=0.500000))
         StartSizeRange=(X=(Min=3.000000,Max=3.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.Dot_Neutral'
         LifetimeRange=(Min=1.000000,Max=1.000000)
         Name="SpriteEmitter30"
     End Object
     Emitters(0)=SpriteEmitter'HGame.CROrbFX2a.SpriteEmitter30'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter36
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=102,G=102,R=255))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=102,G=102,R=255))
         ColorScale(3)=(RelativeTime=1.000000)
         CoordinateSystem=PTCS_Relative
         MaxParticles=100
         Disabled=True
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=11.000000,Max=11.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(X=(Min=0.010000,Max=0.010000))
         StartSizeRange=(X=(Min=2.000000,Max=2.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.Dot_Neutral'
         LifetimeRange=(Min=1.000000,Max=1.000000)
         Name="SpriteEmitter36"
     End Object
     Emitters(1)=SpriteEmitter'HGame.CROrbFX2a.SpriteEmitter36'
     Physics=PHYS_Trailer
}
