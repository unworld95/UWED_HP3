Class TorchFire extends SpellFlyEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         Acceleration=(Z=5.000000)
         UseColorScale=True
         FadeOutStartTime=0.350000
         FadeOut=True
         FadeInEndTime=0.100000
         FadeIn=True
         MaxParticles=25
         SpinParticles=True
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=1.500000)
         StartSizeRange=(X=(Min=30.000000,Max=40.000000),Y=(Min=5.000000,Max=5.000000),Z=(Min=5.000000,Max=5.000000))
         UniformSize=True
         ParticlesPerSecond=0.010000
         Texture=Texture'HP3_FX.MultiFrame.Fire256'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=0.500000,Max=1.000000)
         Name="SpriteEmitter0"
     End Object
     Emitters(0)=SpriteEmitter'HGame.TorchFire.SpriteEmitter0'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter4
         FadeOutStartTime=0.750000
         FadeOut=True
         FadeIn=True
         StartLocationOffset=(Z=10.000000)
         StartLocationRange=(X=(Min=-3.000000,Max=3.000000),Y=(Min=-3.000000,Max=3.000000),Z=(Min=-3.000000,Max=3.000000))
         UseRevolution=True
         RevolutionCenterOffsetRange=(Z=(Min=-0.250000,Max=0.250000))
         RevolutionsPerSecondRange=(Z=(Min=-0.500000,Max=0.500000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.400000,RelativeSize=1.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=3.000000)
         StartSizeRange=(X=(Min=5.000000,Max=5.000000),Y=(Min=5.000000,Max=5.000000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.Particles.Smoke1'
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=2.000000)
         StartVelocityRange=(Z=(Min=15.000000,Max=25.000000))
         Name="SpriteEmitter4"
     End Object
     Emitters(1)=SpriteEmitter'HGame.TorchFire.SpriteEmitter4'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter8
         Acceleration=(Z=20.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(R=255))
         ColorScale(1)=(RelativeTime=0.400000,Color=(B=64,G=128,R=255))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=192,G=192,R=192))
         FadeOut=True
         StartLocationOffset=(Z=20.000000)
         StartLocationRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000),Z=(Min=-5.000000,Max=5.000000))
         UseRevolution=True
         RevolutionCenterOffsetRange=(Z=(Min=-5.000000,Max=5.000000))
         RevolutionsPerSecondRange=(Z=(Min=-1.000000,Max=1.000000))
         SpinParticles=True
         StartSizeRange=(X=(Min=0.500000,Max=1.000000),Y=(Min=0.500000,Max=1.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.Smoke1'
         LifetimeRange=(Min=1.000000,Max=2.000000)
         StartVelocityRange=(Z=(Min=20.000000,Max=40.000000))
         VelocityLossRange=(Z=(Min=0.500000,Max=1.000000))
         Name="SpriteEmitter8"
     End Object
     Emitters(2)=SpriteEmitter'HGame.TorchFire.SpriteEmitter8'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter7
         FadeOutStartTime=0.750000
         FadeOut=True
         FadeIn=True
         StartLocationOffset=(Z=10.000000)
         StartLocationRange=(X=(Min=-3.000000,Max=3.000000),Y=(Min=-3.000000,Max=3.000000),Z=(Min=-3.000000,Max=3.000000))
         UseRevolution=True
         RevolutionCenterOffsetRange=(Z=(Min=-0.250000,Max=0.250000))
         RevolutionsPerSecondRange=(Z=(Min=-0.500000,Max=0.500000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.400000,RelativeSize=1.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=3.000000)
         StartSizeRange=(X=(Min=5.000000,Max=5.000000),Y=(Min=5.000000,Max=5.000000))
         UniformSize=True
         DrawStyle=PTDS_Darken
         Texture=Texture'HP3_FX.Particles.Smoke1'
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=2.000000)
         StartVelocityRange=(Z=(Min=15.000000,Max=25.000000))
         Name="SpriteEmitter7"
     End Object
     Emitters(3)=SpriteEmitter'HGame.TorchFire.SpriteEmitter7'
     AutoDestroy=True
     AutoReset=False
     LightHue=10
     LightSaturation=70
}
