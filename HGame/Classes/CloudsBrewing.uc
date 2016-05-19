Class CloudsBrewing extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter22
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=128,G=64))
         ColorScale(2)=(RelativeTime=1.000000)
         FadeOutStartTime=4.000000
         FadeOut=True
         FadeInEndTime=1.000000
         FadeIn=True
         MaxParticles=50
         StartLocationRange=(X=(Min=-300.000000,Max=300.000000),Y=(Min=-400.000000,Max=400.000000),Z=(Max=150.000000))
         SphereRadiusRange=(Min=200.000000,Max=300.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(Y=(Max=-0.100000))
         StartSizeRange=(X=(Min=200.000000,Max=75.000000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.MultiFrame.CloudsBrewing'
         TextureUSubdivisions=2
         TextureVSubdivisions=2
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=8.000000,Max=10.000000)
         StartVelocityRange=(X=(Min=10.000000,Max=20.000000))
         VelocityLossRange=(X=(Min=3.000000,Max=3.000000),Y=(Min=3.000000,Max=3.000000),Z=(Min=1.000000,Max=1.000000))
         UseVelocityScale=True
         VelocityScale(0)=(RelativeTime=0.100000,RelativeVelocity=(X=10.000000,Y=-10.000000))
         VelocityScale(1)=(RelativeTime=0.500000,RelativeVelocity=(X=-50.000000,Y=-50.000000))
         RelativeWarmupTime=3.000000
         Name="SpriteEmitter22"
     End Object
     Emitters(0)=SpriteEmitter'HGame.CloudsBrewing.SpriteEmitter22'
}
