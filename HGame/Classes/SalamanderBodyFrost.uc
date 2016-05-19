Class SalamanderBodyFrost extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter18
         Acceleration=(Z=-5.000000)
         UseCollision=True
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.100000,Color=(B=255,G=128))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=255,G=255))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255))
         ColorScaleRepeats=15.000000
         ColorMultiplierRange=(X=(Min=255.000000,Max=255.000000))
         FadeOutStartTime=2.000000
         FadeOut=True
         FadeInEndTime=0.100000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=50
         EffectAxis=PTEA_PositiveZ
         SpinParticles=True
         SpinCCWorCW=(X=5.000000)
         SpinsPerSecondRange=(X=(Min=0.300000,Max=0.500000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=1.500000)
         StartSizeRange=(X=(Min=3.000000,Max=6.000000),Y=(Min=5.000000,Max=5.000000),Z=(Min=5.000000,Max=5.000000))
         UniformSize=True
         UseSkeletalLocationAs=PTSU_SpawnOffset
         RelativeBoneIndexRange=(Min=0.300000)
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Les_Sparkle_04'
         LifetimeRange=(Min=2.500000,Max=2.500000)
         StartVelocityRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000))
         StartVelocityRadialRange=(Min=-20.000000,Max=30.000000)
         GetVelocityDirectionFrom=PTVD_AddRadial
         Name="SpriteEmitter18"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SalamanderBodyFrost.SpriteEmitter18'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter19
         Acceleration=(Z=10.000000)
         UseColorScale=True
         FadeOutStartTime=1.800000
         FadeOut=True
         FadeInEndTime=0.200000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=50
         EffectAxis=PTEA_PositiveZ
         SpinParticles=True
         SpinCCWorCW=(X=5.000000)
         SpinsPerSecondRange=(X=(Min=-0.500000,Max=0.500000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=2.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=5.000000)
         StartSizeRange=(X=(Min=5.000000,Max=6.000000),Y=(Min=5.000000,Max=5.000000),Z=(Min=5.000000,Max=5.000000))
         UniformSize=True
         UseSkeletalLocationAs=PTSU_SpawnOffset
         RelativeBoneIndexRange=(Min=0.300000)
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.FF_SmallPuff'
         StartVelocityRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000),Z=(Min=-20.000000,Max=10.000000))
         Name="SpriteEmitter19"
     End Object
     Emitters(1)=SpriteEmitter'HGame.SalamanderBodyFrost.SpriteEmitter19'
     bDirectional=True
}
