Class FootfallDust extends Dustsmall;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter11
         Acceleration=(Z=-15.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=130,G=168,R=179))
         FadeOutStartTime=0.500000
         FadeOut=True
         MaxParticles=30
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=1.000000,Max=5.000000)
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=-0.500000))
         UseSizeScale=True
         StartSizeRange=(X=(Min=3.000000,Max=5.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Smoke1'
         LifetimeRange=(Min=0.900000,Max=1.000000)
         StartVelocityRange=(X=(Min=90.000000,Max=-90.000000),Y=(Min=90.000000,Max=-90.000000),Z=(Min=0.500000,Max=10.000000))
         VelocityLossRange=(X=(Min=4.000000,Max=4.000000),Y=(Min=4.000000,Max=4.000000),Z=(Min=2.000000,Max=2.000000))
         Name="SpriteEmitter11"
     End Object
     Emitters(0)=SpriteEmitter'HGame.FootfallDust.SpriteEmitter11'
     bHighDetail=True
}
