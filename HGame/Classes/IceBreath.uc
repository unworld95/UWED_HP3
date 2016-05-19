Class IceBreath extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter121
         Acceleration=(Z=20.000000)
         FadeOutStartTime=0.500000
         FadeOut=True
         FadeInEndTime=0.010000
         FadeIn=True
         StartLocationRange=(Y=(Min=-1.000000,Max=1.000000),Z=(Min=-1.000000,Max=1.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.400000,RelativeSize=2.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=5.000000)
         StartSizeRange=(X=(Min=6.000000,Max=2.000000))
         UniformSize=True
         InitialParticlesPerSecond=50.000000
         Texture=Texture'HP3_FX.MultiFrame.SmokeSequence'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         UseRandomSubdivision=True
         LifetimeRange=(Min=1.750000,Max=2.000000)
         StartVelocityRange=(X=(Min=50.000000,Max=75.000000))
         VelocityLossRange=(X=(Max=5.000000))
         RelativeWarmupTime=10.000000
         Name="SpriteEmitter121"
     End Object
     Emitters(0)=SpriteEmitter'HGame.IceBreath.SpriteEmitter121'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter128
         Acceleration=(Z=20.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=255,G=128))
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=255,G=255,R=255))
         ColorScale(2)=(RelativeTime=0.400000,Color=(B=255,G=128))
         ColorScale(3)=(RelativeTime=0.600000,Color=(B=255,G=255,R=255))
         ColorScale(4)=(RelativeTime=0.800000,Color=(B=255,G=128))
         FadeOutStartTime=0.500000
         FadeOut=True
         FadeInEndTime=0.010000
         FadeIn=True
         MaxParticles=40
         StartLocationRange=(Y=(Min=-1.000000,Max=1.000000),Z=(Min=-1.000000,Max=1.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-3.000000,Max=3.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.400000,RelativeSize=2.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=3.000000)
         StartSizeRange=(X=(Min=0.500000,Max=1.500000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.Les_Sparkle_04'
         LifetimeRange=(Min=1.750000,Max=2.000000)
         StartVelocityRange=(X=(Min=50.000000,Max=75.000000))
         VelocityLossRange=(X=(Max=5.000000))
         Name="SpriteEmitter128"
     End Object
     Emitters(1)=SpriteEmitter'HGame.IceBreath.SpriteEmitter128'
}
