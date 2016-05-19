Class PeevesTorchFire extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter37
         Acceleration=(Z=5.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=24,G=140,R=245))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=5,G=105,R=239))
         FadeOutStartTime=0.750000
         FadeOut=True
         FadeInEndTime=0.400000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         EffectAxis=PTEA_PositiveZ
         AutoDestroy=True
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Y=(Min=-2.000000,Max=2.000000))
         SpinParticles=True
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=1.000000,RelativeSize=0.500000)
         StartSizeRange=(X=(Min=10.000000,Max=15.000000),Y=(Min=10.000000,Max=15.000000),Z=(Min=10.000000,Max=15.000000))
         UniformSize=True
         UseSkeletalLocationAs=PTSU_SpawnOffset
         RelativeBoneIndexRange=(Min=0.400000,Max=0.800000)
         ParticlesPerSecond=8.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.MultiFrame.Fire256'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=1.000000,Max=1.000000)
         StartVelocityRange=(Z=(Min=10.000000,Max=15.000000))
         Name="SpriteEmitter37"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PeevesTorchFire.SpriteEmitter37'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter43
         ColorScale(0)=(Color=(R=255))
         ColorScale(1)=(RelativeTime=0.400000,Color=(B=64,G=128,R=255))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=192,G=192,R=192))
         FadeOut=True
         FadeInEndTime=0.100000
         FadeIn=True
         MaxParticles=30
         StartLocationOffset=(Z=20.000000)
         StartLocationRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000),Z=(Min=-5.000000,Max=5.000000))
         StartLocationPolarRange=(X=(Max=65536.000000),Y=(Min=16350.000000,Max=16400.000000),Z=(Min=-40.000000,Max=40.000000))
         UseRevolution=True
         RevolutionCenterOffsetRange=(Z=(Min=-1.000000,Max=1.000000))
         RevolutionsPerSecondRange=(Z=(Max=1.000000))
         SpinParticles=True
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=5.000000)
         StartSizeRange=(X=(Min=4.000000,Max=6.000000),Y=(Min=1.000000,Max=2.000000))
         UniformSize=True
         DrawStyle=PTDS_Darken
         Texture=Texture'HP3_FX.Particles.Smoke1'
         LifetimeRange=(Min=1.500000,Max=2.000000)
         StartVelocityRange=(Z=(Min=10.000000,Max=20.000000))
         VelocityLossRange=(Z=(Min=0.500000,Max=1.000000))
         Name="SpriteEmitter43"
     End Object
     Emitters(1)=SpriteEmitter'HGame.PeevesTorchFire.SpriteEmitter43'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter77
         Acceleration=(Z=5.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=24,G=140,R=245))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=5,G=105,R=239))
         FadeOutStartTime=0.750000
         FadeOut=True
         FadeInEndTime=0.400000
         FadeIn=True
         EffectAxis=PTEA_PositiveZ
         AutoDestroy=True
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Y=(Min=-2.000000,Max=2.000000))
         SpinParticles=True
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=1.000000,RelativeSize=0.500000)
         StartSizeRange=(X=(Min=10.000000,Max=15.000000),Y=(Min=10.000000,Max=15.000000),Z=(Min=10.000000,Max=15.000000))
         UniformSize=True
         UseSkeletalLocationAs=PTSU_SpawnOffset
         RelativeBoneIndexRange=(Min=0.400000,Max=0.800000)
         ParticlesPerSecond=8.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.MultiFrame.Fire256'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=1.000000,Max=1.000000)
         StartVelocityRange=(Z=(Min=10.000000,Max=15.000000))
         Name="SpriteEmitter77"
     End Object
     Emitters(2)=SpriteEmitter'HGame.PeevesTorchFire.SpriteEmitter77'
}