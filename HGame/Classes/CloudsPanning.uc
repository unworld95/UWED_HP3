Class CloudsPanning extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter13
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=128,G=64))
         ColorScale(2)=(RelativeTime=1.000000)
         ColorMultiplierRange=(X=(Min=60.000000,Max=80.000000),Y=(Min=60.000000,Max=80.000000))
         FadeOutStartTime=15.000000
         FadeOut=True
         FadeInEndTime=4.000000
         FadeIn=True
         MaxParticles=50
         StartLocationRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000),Z=(Min=-10.000000,Max=10.000000))
         SphereRadiusRange=(Min=200.000000,Max=300.000000)
         RevolutionsPerSecondRange=(Y=(Max=-0.100000))
         StartSizeRange=(X=(Min=40.000000,Max=25.000000))
         UniformSize=True
         ParticlesPerSecond=1.000000
         InitialParticlesPerSecond=1.000000
         DrawStyle=PTDS_AlphaBlend
         Texture=Texture'HP3_FX.MultiFrame.CloudsBrewingBlue'
         TextureUSubdivisions=2
         TextureVSubdivisions=2
         BlendBetweenSubdivisions=True
         UseRandomSubdivision=True
         LifetimeRange=(Min=20.000000,Max=20.000000)
         StartVelocityRange=(X=(Min=-1.000000,Max=-4.000000),Y=(Min=-2.000000,Max=-6.000000))
         VelocityScale(0)=(RelativeTime=0.100000,RelativeVelocity=(X=10.000000,Y=-10.000000))
         VelocityScale(1)=(RelativeTime=0.500000,RelativeVelocity=(X=-50.000000,Y=-50.000000))
         WarmupTicksPerSecond=0.100000
         RelativeWarmupTime=1.000000
         Name="SpriteEmitter13"
     End Object
     Emitters(0)=SpriteEmitter'HGame.CloudsPanning.SpriteEmitter13'
}
