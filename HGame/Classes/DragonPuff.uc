Class DragonPuff extends SpellFlyEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter46
         FadeOutStartTime=1.000000
         FadeOut=True
         FadeInEndTime=0.500000
         FadeIn=True
         MaxParticles=20
         StartLocationOffset=(Z=10.000000)
         StartLocationRange=(X=(Min=-3.000000,Max=3.000000),Y=(Min=-3.000000,Max=3.000000),Z=(Min=-3.000000,Max=3.000000))
         UseRevolution=True
         RevolutionCenterOffsetRange=(Z=(Min=-0.250000,Max=0.250000))
         RevolutionsPerSecondRange=(Z=(Min=-0.500000,Max=0.500000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=0.500000)
         SizeScale(1)=(RelativeTime=0.400000,RelativeSize=1.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=3.000000)
         StartSizeRange=(X=(Min=5.000000,Max=5.000000),Y=(Min=5.000000,Max=5.000000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.Particles.Smoke1'
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=2.000000)
         StartVelocityRange=(Z=(Min=15.000000,Max=25.000000))
         Name="SpriteEmitter46"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DragonPuff.SpriteEmitter46'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter47
         Acceleration=(Z=20.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(R=255))
         ColorScale(1)=(RelativeTime=0.400000,Color=(B=64,G=128,R=255))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=192,G=192,R=192))
         FadeOutStartTime=0.750000
         FadeOut=True
         FadeInEndTime=0.200000
         FadeIn=True
         StartLocationOffset=(Z=20.000000)
         StartLocationRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000),Z=(Min=-5.000000,Max=5.000000))
         UseRevolution=True
         RevolutionCenterOffsetRange=(Z=(Min=-5.000000,Max=5.000000))
         RevolutionsPerSecondRange=(Z=(Min=-1.000000,Max=1.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-2.000000,Max=2.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.010000,RelativeSize=5.000000)
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=3.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=0.500000)
         StartSizeRange=(X=(Min=0.500000,Max=0.750000),Y=(Min=0.500000,Max=1.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Spells.LesFire_01'
         LifetimeRange=(Min=1.000000,Max=2.000000)
         StartVelocityRange=(Z=(Min=20.000000,Max=40.000000))
         VelocityLossRange=(Z=(Min=0.500000,Max=1.000000))
         Name="SpriteEmitter47"
     End Object
     Emitters(1)=SpriteEmitter'HGame.DragonPuff.SpriteEmitter47'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter48
         FadeOutStartTime=0.750000
         FadeOut=True
         FadeInEndTime=0.200000
         FadeIn=True
         StartLocationOffset=(Z=10.000000)
         StartLocationRange=(X=(Min=-3.000000,Max=3.000000),Y=(Min=-3.000000,Max=3.000000),Z=(Min=-3.000000,Max=3.000000))
         UseRevolution=True
         RevolutionCenterOffsetRange=(Z=(Min=-0.250000,Max=0.250000))
         RevolutionsPerSecondRange=(Z=(Min=-0.500000,Max=0.500000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.001000)
         SizeScale(1)=(RelativeTime=0.400000,RelativeSize=1.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=3.000000)
         StartSizeRange=(X=(Min=5.000000,Max=5.000000),Y=(Min=5.000000,Max=5.000000))
         UniformSize=True
         DrawStyle=PTDS_Darken
         Texture=Texture'HP3_FX.Particles.Smoke1'
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=2.000000)
         StartVelocityRange=(Z=(Min=15.000000,Max=25.000000))
         Name="SpriteEmitter48"
     End Object
     Emitters(2)=SpriteEmitter'HGame.DragonPuff.SpriteEmitter48'
     LightBrightness=0.000000
}
