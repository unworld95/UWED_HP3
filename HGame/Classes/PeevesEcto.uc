Class PeevesEcto extends SpellFlyEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter58
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=49,G=251,R=80))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=15,G=249,R=143))
         ColorScale(3)=(RelativeTime=1.000000)
         MaxParticles=75
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=10.000000,Max=20.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(X=(Min=0.250000,Max=-0.250000),Y=(Min=0.250000,Max=-0.250000))
         StartSizeRange=(X=(Min=1.000000,Max=8.000000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Dot_Neutral'
         LifetimeRange=(Min=1.500000,Max=1.500000)
         StartVelocityRange=(X=(Min=-4.000000,Max=4.000000),Y=(Min=-4.000000,Max=4.000000))
         UseVelocityScale=True
         VelocityScale(0)=(RelativeVelocity=(X=10.000000,Y=-10.000000))
         VelocityScale(1)=(RelativeVelocity=(X=-10.000000,Y=10.000000))
         VelocityScale(2)=(RelativeTime=1.000000,RelativeVelocity=(X=10.000000,Y=-10.000000))
         Name="SpriteEmitter58"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PeevesEcto.SpriteEmitter58'
}
