Class BlockSlidingDust extends Smoke_Dust;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter94
         FadeOutStartTime=1.000000
         FadeOut=True
         FadeInEndTime=0.500000
         FadeIn=True
         MaxParticles=50
         StartLocationRange=(Y=(Min=-64.000000,Max=64.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=0.250000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=5.000000,Max=20.000000))
         UniformSize=True
         ParticlesPerSecond=5.000000
         Texture=Texture'HP3_FX.MultiFrame.SmokeSequence'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         UseRandomSubdivision=True
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000),Z=(Min=5.000000,Max=15.000000))
         VelocityLossRange=(Z=(Max=5.000000))
         WarmupTicksPerSecond=10.000000
         RelativeWarmupTime=10.000000
         Name="SpriteEmitter94"
     End Object
     Emitters(0)=SpriteEmitter'HGame.BlockSlidingDust.SpriteEmitter94'
}
