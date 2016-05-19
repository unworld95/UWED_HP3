Class SalamanderBodyFire extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         UseColorScale=True
         ColorScale(0)=(Color=(B=24,G=140,R=245))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=5,G=105,R=239))
         FadeOutStartTime=0.750000
         FadeOut=True
         FadeInEndTime=0.250000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=60
         EffectAxis=PTEA_PositiveZ
         AutoDestroy=True
         SpinParticles=True
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=1.000000,RelativeSize=0.500000)
         StartSizeRange=(X=(Min=10.000000,Max=20.000000),Y=(Min=5.000000,Max=5.000000),Z=(Min=5.000000,Max=5.000000))
         UniformSize=True
         UseSkeletalLocationAs=PTSU_SpawnOffset
         RelativeBoneIndexRange=(Min=0.400000,Max=0.800000)
         ParticlesPerSecond=5.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.MultiFrame.Fire256'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=0.500000,Max=0.700000)
         StartVelocityRange=(Y=(Min=-15.000000,Max=-35.000000))
         Name="SpriteEmitter0"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SalamanderBodyFire.SpriteEmitter0'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter10
         Acceleration=(Z=5.000000)
         UseColorScale=True
         FadeOut=True
         FadeInEndTime=0.100000
         FadeIn=True
         MaxParticles=30
         EffectAxis=PTEA_PositiveZ
         AutoDestroy=True
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
         LifetimeRange=(Min=1.500000,Max=2.500000)
         StartVelocityRange=(Z=(Min=10.000000,Max=25.000000))
         Name="SpriteEmitter10"
     End Object
     Emitters(1)=SpriteEmitter'HGame.SalamanderBodyFire.SpriteEmitter10'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter11
         UseColorScale=True
         FadeOutStartTime=2.000000
         FadeOut=True
         FadeInEndTime=0.100000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=100
         EffectAxis=PTEA_PositiveZ
         SpinParticles=True
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=1.000000,RelativeSize=1.000000)
         StartSizeRange=(X=(Min=30.000000,Max=40.000000),Y=(Min=5.000000,Max=5.000000),Z=(Min=5.000000,Max=5.000000))
         UniformSize=True
         UseSkeletalLocationAs=PTSU_SpawnOffset
         RelativeBoneIndexRange=(Min=0.300000)
         InitialParticlesPerSecond=100.000000
         Texture=Texture'HP3_FX.MultiFrame.Fire256'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=1.000000,Max=1.500000)
         Name="SpriteEmitter11"
     End Object
     Emitters(2)=SpriteEmitter'HGame.SalamanderBodyFire.SpriteEmitter11'
     bDirectional=True
}
