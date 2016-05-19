Class DementorFrozenEffect extends SpellFlyEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter51
         ColorScale(0)=(Color=(R=255))
         ColorScale(1)=(RelativeTime=0.250000,Color=(R=255))
         ColorScale(2)=(RelativeTime=0.500000,Color=(B=128,G=255,R=255))
         ColorScale(3)=(RelativeTime=0.750000,Color=(R=255))
         ColorScale(4)=(RelativeTime=1.000000,Color=(R=255))
         FadeOutStartTime=1.750000
         FadeOut=True
         FadeInEndTime=0.200000
         FadeIn=True
         MaxParticles=50
         AutoReset=True
         AutoResetTimeRange=(Min=2.000000,Max=2.000000)
         StartLocationOffset=(Z=-100.000000)
         StartLocationRange=(X=(Min=-40.000000,Max=40.000000),Y=(Min=-40.000000,Max=40.000000),Z=(Min=-2.000000,Max=2.000000))
         SphereRadiusRange=(Min=65536.000000,Max=65536.000000)
         StartLocationPolarRange=(X=(Min=65536.000000,Max=65536.000000),Y=(Max=65536.000000),Z=(Min=50.000000,Max=50.000000))
         MeshSpawning=PTMS_Random
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=0.500000,Max=1.000000))
         SpinParticles=True
         SpinCCWorCW=(X=-5.000000)
         SpinsPerSecondRange=(X=(Min=-3.000000,Max=3.000000),Y=(Min=-5.000000,Max=5.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.200000,RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=4.000000)
         StartSizeRange=(X=(Min=5.000000,Max=8.000000),Y=(Min=1.000000,Max=1.000000),Z=(Min=1.000000,Max=1.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-100.000000,Max=100.000000),Y=(Min=-100.000000,Max=100.000000),Z=(Min=100.000000,Max=100.000000))
         GetVelocityDirectionFrom=PTVD_AddRadial
         Name="SpriteEmitter51"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DementorFrozenEffect.SpriteEmitter51'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter50
         Acceleration=(Z=-100.000000)
         FadeOutStartTime=0.150000
         FadeOut=True
         FadeInEndTime=0.050000
         FadeIn=True
         MaxParticles=20
         StartLocationRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=-50.000000,Max=50.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-1.000000,Max=1.000000))
         StartSizeRange=(X=(Min=5.000000,Max=8.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.MultiFrame.Multi_Stars'
         TextureUSubdivisions=2
         TextureVSubdivisions=2
         UseRandomSubdivision=True
         LifetimeRange=(Min=0.200000,Max=0.200000)
         Name="SpriteEmitter50"
     End Object
     Emitters(1)=SpriteEmitter'HGame.DementorFrozenEffect.SpriteEmitter50'
     LightType=LT_None
}
