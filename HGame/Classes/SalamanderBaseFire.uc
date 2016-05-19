Class SalamanderBaseFire extends CreatureFX;

var bool bFrozen;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter15
         Acceleration=(Z=5.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=24,G=140,R=245))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=5,G=105,R=239))
         FadeOutStartTime=1.750000
         FadeOut=True
         FadeInEndTime=0.400000
         FadeIn=True
         MaxParticles=30
         EffectAxis=PTEA_PositiveZ
         AutoDestroy=True
         StartLocationRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000))
         SpinParticles=True
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=1.000000,RelativeSize=0.500000)
         StartSizeRange=(X=(Min=10.000000,Max=20.000000),Y=(Min=5.000000,Max=5.000000),Z=(Min=5.000000,Max=5.000000))
         UniformSize=True
         UseSkeletalLocationAs=PTSU_SpawnOffset
         RelativeBoneIndexRange=(Min=0.400000,Max=0.800000)
         ParticlesPerSecond=10.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.MultiFrame.Fire256'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(Z=(Min=10.000000,Max=25.000000))
         Name="SpriteEmitter15"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SalamanderBaseFire.SpriteEmitter15'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter17
         FadeOut=True
         FadeInEndTime=0.100000
         FadeIn=True
         StartLocationOffset=(Z=10.000000)
         StartLocationRange=(X=(Min=-3.000000,Max=3.000000),Y=(Min=-3.000000,Max=3.000000),Z=(Min=-3.000000,Max=3.000000))
         StartLocationShape=PTLS_Polar
         StartLocationPolarRange=(X=(Max=65536.000000),Y=(Min=16350.000000,Max=16400.000000),Z=(Min=10.000000,Max=20.000000))
         UseRevolution=True
         RevolutionCenterOffsetRange=(Z=(Max=0.250000))
         RevolutionsPerSecondRange=(Z=(Min=-0.500000,Max=0.500000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.400000,RelativeSize=1.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=3.000000)
         StartSizeRange=(X=(Min=5.000000,Max=5.000000),Y=(Min=5.000000,Max=5.000000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.MultiFrame.SmokeSequence'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=2.000000,Max=2.500000)
         StartVelocityRange=(Z=(Min=15.000000,Max=20.000000))
         Name="SpriteEmitter17"
     End Object
     Emitters(1)=SpriteEmitter'HGame.SalamanderBaseFire.SpriteEmitter17'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter21
         Acceleration=(Z=20.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(R=255))
         ColorScale(1)=(RelativeTime=0.400000,Color=(B=64,G=128,R=255))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=192,G=192,R=192))
         FadeOut=True
         FadeInEndTime=0.100000
         FadeIn=True
         StartLocationOffset=(Z=20.000000)
         StartLocationRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000),Z=(Min=-5.000000,Max=5.000000))
         StartLocationShape=PTLS_Polar
         StartLocationPolarRange=(X=(Max=65536.000000),Y=(Min=16350.000000,Max=16400.000000),Z=(Min=-40.000000,Max=40.000000))
         UseRevolution=True
         RevolutionCenterOffsetRange=(Z=(Min=-5.000000,Max=5.000000))
         RevolutionsPerSecondRange=(Z=(Min=-1.000000,Max=1.000000))
         SpinParticles=True
         StartSizeRange=(X=(Min=0.500000,Max=1.000000),Y=(Min=0.500000,Max=1.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.Smoke1'
         LifetimeRange=(Min=1.500000,Max=2.000000)
         StartVelocityRange=(Z=(Min=20.000000,Max=40.000000))
         VelocityLossRange=(Z=(Min=0.500000,Max=1.000000))
         Name="SpriteEmitter21"
     End Object
     Emitters(2)=SpriteEmitter'HGame.SalamanderBaseFire.SpriteEmitter21'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter22
         FadeOutStartTime=0.500000
         FadeOut=True
         FadeInEndTime=0.200000
         FadeIn=True
         StartLocationOffset=(Z=10.000000)
         StartLocationRange=(X=(Min=-3.000000,Max=3.000000),Y=(Min=-3.000000,Max=3.000000),Z=(Min=-3.000000,Max=3.000000))
         StartLocationShape=PTLS_Polar
         StartLocationPolarRange=(X=(Max=65536.000000),Y=(Min=16350.000000,Max=16400.000000),Z=(Min=-40.000000,Max=40.000000))
         UseRevolution=True
         RevolutionCenterOffsetRange=(Z=(Min=-0.250000,Max=0.250000))
         RevolutionsPerSecondRange=(Z=(Min=-0.250000,Max=0.250000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.250000,RelativeSize=3.000000)
         SizeScale(1)=(RelativeTime=0.800000,RelativeSize=5.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=7.000000)
         StartSizeRange=(X=(Min=5.000000,Max=7.000000),Y=(Min=5.000000,Max=7.000000))
         UniformSize=True
         DrawStyle=PTDS_Darken
         Texture=Texture'HP3_FX.MultiFrame.LargeFlamesBW'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=1.500000,Max=2.000000)
         StartVelocityRange=(Z=(Min=15.000000,Max=34.000000))
         Name="SpriteEmitter22"
     End Object
     Emitters(3)=SpriteEmitter'HGame.SalamanderBaseFire.SpriteEmitter22'
}
