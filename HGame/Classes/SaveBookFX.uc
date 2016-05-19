Class SaveBookFX extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter77
         UseColorScale=True
         ColorScale(0)=(Color=(B=255,G=255,R=255))
         ColorScale(1)=(RelativeTime=1.000000)
         ColorScaleRepeats=3.000000
         FadeOutStartTime=1.000000
         FadeOut=True
         FadeInEndTime=0.250000
         FadeIn=True
         MaxParticles=50
         StartLocationRange=(X=(Min=-15.000000,Max=15.000000),Y=(Min=-20.000000,Max=20.000000))
         RevolutionCenterOffsetRange=(Y=(Min=-15.000000,Max=15.000000))
         RevolutionsPerSecondRange=(Z=(Min=0.100000,Max=0.500000))
         StartSizeRange=(X=(Min=1.000000,Max=1.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.Les_Sparkle_01'
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(Z=(Min=5.000000,Max=8.000000))
         Name="SpriteEmitter77"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SaveBookFX.SpriteEmitter77'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter81
         ColorScale(0)=(Color=(B=255,G=255,R=255))
         ColorScale(1)=(RelativeTime=1.000000)
         ColorScaleRepeats=4.000000
         ColorMultiplierRange=(X=(Min=160.000000,Max=160.000000),Y=(Min=80.000000,Max=140.000000))
         FadeOutStartTime=1.500000
         FadeOut=True
         FadeInEndTime=0.250000
         FadeIn=True
         MaxParticles=50
         StartLocationRange=(X=(Min=-15.000000,Max=15.000000),Y=(Min=-20.000000,Max=20.000000))
         RevolutionCenterOffsetRange=(Y=(Min=-15.000000,Max=15.000000))
         RevolutionsPerSecondRange=(Z=(Min=0.100000,Max=0.500000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=3.000000)
         StartSizeRange=(X=(Min=1.000000,Max=2.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.Smoke5'
         LifetimeRange=(Min=3.000000,Max=3.000000)
         StartVelocityRange=(Z=(Min=-5.000000,Max=-10.000000))
         VelocityLossRange=(Z=(Min=1.000000,Max=1.000000))
         Name="SpriteEmitter81"
     End Object
     Emitters(1)=SpriteEmitter'HGame.SaveBookFX.SpriteEmitter81'
}
