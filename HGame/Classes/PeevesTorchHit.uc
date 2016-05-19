Class PeevesTorchHit extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter78
         Acceleration=(Z=250.000000)
         FadeOutStartTime=0.500000
         FadeOut=True
         MaxParticles=30
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=1.000000,Max=2.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=4.000000)
         StartSizeRange=(X=(Min=3.000000,Max=4.000000))
         UniformSize=True
         InitialParticlesPerSecond=120.000000
         Texture=Texture'HP3_FX.MultiFrame.LargeFlames'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=1.000000,Max=1.000000)
         StartVelocityRange=(X=(Min=-100.000000,Max=100.000000),Y=(Min=-100.000000,Max=100.000000),Z=(Min=-10.000000,Max=50.000000))
         VelocityLossRange=(X=(Min=3.000000,Max=3.000000),Y=(Min=3.000000,Max=3.000000),Z=(Min=2.000000,Max=3.000000))
         Name="SpriteEmitter78"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PeevesTorchHit.SpriteEmitter78'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter79
         Acceleration=(Z=-50.000000)
         FadeOutStartTime=1.500000
         FadeOut=True
         MaxParticles=15
         StartLocationRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000),Z=(Min=-10.000000,Max=10.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=2.000000,Max=2.000000),Y=(Min=-2.000000,Max=2.000000))
         StartSizeRange=(X=(Min=5.000000,Max=8.000000),Y=(Min=6.000000,Max=8.000000))
         UniformSize=True
         InitialParticlesPerSecond=120.000000
         Texture=Texture'HP_FX.Spells.Particle_02'
         UseRandomSubdivision=True
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=25.000000,Max=50.000000))
         VelocityLossRange=(X=(Max=2.000000),Y=(Max=2.000000),Z=(Max=2.000000))
         Name="SpriteEmitter79"
     End Object
     Emitters(1)=SpriteEmitter'HGame.PeevesTorchHit.SpriteEmitter79'
}
