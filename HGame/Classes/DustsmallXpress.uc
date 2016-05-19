Class DustsmallXpress extends Smoke_Dust;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter11
         UseColorScale=True
         ColorScale(1)=(Color=(B=130,G=168,R=179))
         ColorScale(2)=(RelativeTime=1.000000)
         MaxParticles=15
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=1.000000,Max=5.000000)
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=-0.500000))
         StartSizeRange=(X=(Min=5.000000,Max=20.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Smoke1'
         LifetimeRange=(Min=1.000000)
         StartVelocityRange=(X=(Min=50.000000,Max=-50.000000),Y=(Min=50.000000,Max=-50.000000),Z=(Min=50.000000,Max=-50.000000))
         VelocityLossRange=(X=(Min=2.000000,Max=2.000000),Y=(Min=2.000000,Max=2.000000),Z=(Min=2.000000,Max=2.000000))
         Name="SpriteEmitter11"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DustsmallXpress.SpriteEmitter11'
}
