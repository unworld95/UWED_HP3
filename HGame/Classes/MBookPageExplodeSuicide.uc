Class MBookPageExplodeSuicide extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter23
         DampingFactorRange=(Z=(Min=0.100000,Max=0.500000))
         MaxCollisions=(Min=2.000000,Max=3.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=255,G=255,R=255))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=255,G=128))
         ColorScale(3)=(RelativeTime=1.000000)
         MaxParticles=75
         StartLocationRange=(X=(Min=5.000000,Max=-5.000000),Y=(Min=5.000000,Max=-5.000000))
         StartLocationPolarRange=(Y=(Min=50.000000,Max=50.000000),Z=(Min=50.000000,Max=50.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-2.000000,Max=2.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=1.500000)
         SizeScale(1)=(RelativeTime=0.400000,RelativeSize=1.500000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=0.600000)
         StartSizeRange=(X=(Min=2.000000,Max=5.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.Particles.Smoke1'
         LifetimeRange=(Min=0.750000,Max=1.000000)
         StartVelocityRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=-25.000000,Max=60.000000))
         VelocityLossRange=(X=(Max=4.000000),Y=(Max=4.000000),Z=(Max=3.000000))
         VelocityScale(0)=(RelativeVelocity=(Z=-120.000000))
         VelocityScale(1)=(RelativeTime=0.500000,RelativeVelocity=(Z=120.000000))
         VelocityScale(2)=(RelativeTime=0.750000,RelativeVelocity=(X=20.000000,Y=20.000000))
         Name="SpriteEmitter23"
     End Object
     Emitters(0)=SpriteEmitter'HGame.MBookPageExplodeSuicide.SpriteEmitter23'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter16
         FadeOutStartTime=0.700000
         FadeOut=True
         StartLocationRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000),Z=(Min=-10.000000,Max=10.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-2.000000,Max=2.000000),Y=(Min=-2.000000,Max=2.000000))
         StartSizeRange=(X=(Min=4.000000,Max=5.000000),Y=(Min=4.000000,Max=5.000000))
         UniformSize=True
         InitialParticlesPerSecond=500.000000
         Texture=Texture'HP3_FX.Particles.MBoMTear'
         TextureUSubdivisions=2
         TextureVSubdivisions=2
         UseRandomSubdivision=True
         LifetimeRange=(Min=0.750000,Max=1.000000)
         StartVelocityRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=-50.000000,Max=50.000000))
         VelocityLossRange=(X=(Max=2.000000),Y=(Max=2.000000),Z=(Max=2.000000))
         Name="SpriteEmitter16"
     End Object
     Emitters(1)=SpriteEmitter'HGame.MBookPageExplodeSuicide.SpriteEmitter16'
}
