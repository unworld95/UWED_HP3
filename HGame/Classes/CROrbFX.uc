Class CROrbFX extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter8
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
         Name="SpriteEmitter8"
     End Object
     Emitters(0)=SpriteEmitter'HGame.CROrbFX.SpriteEmitter8'
     Physics=PHYS_Trailer
}
