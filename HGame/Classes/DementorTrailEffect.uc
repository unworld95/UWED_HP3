Class DementorTrailEffect extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter129
         Acceleration=(Z=15.000000)
         ColorMultiplierRange=(X=(Min=255.000000,Max=255.000000))
         FadeOutStartTime=0.250000
         FadeOut=True
         MaxParticles=100
         StartLocationRange=(X=(Min=-32.000000,Max=32.000000),Y=(Min=-32.000000,Max=32.000000),Z=(Min=-96.000000,Max=96.000000))
         StartSizeRange=(X=(Min=2.000000,Max=3.000000),Y=(Min=1.000000,Max=1.000000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Les_Sparkle_04'
         LifetimeRange=(Min=2.000000,Max=3.000000)
         Name="SpriteEmitter129"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DementorTrailEffect.SpriteEmitter129'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter130
         Acceleration=(Z=-5.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=240,G=165,R=102))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=213,G=136,R=215))
         ColorScale(3)=(RelativeTime=1.000000)
         ColorScaleRepeats=5.000000
         MaxParticles=100
         StartLocationRange=(X=(Min=-32.000000,Max=32.000000),Y=(Min=-32.000000,Max=32.000000),Z=(Min=-96.000000,Max=96.000000))
         StartLocationPolarRange=(X=(Min=-15.000000,Max=15.000000),Y=(Min=-15.000000,Max=15.000000),Z=(Min=15.000000,Max=-15.000000))
         StartSizeRange=(X=(Min=2.000000,Max=4.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.Smoke3'
         LifetimeRange=(Min=2.000000)
         StartVelocityRange=(Z=(Min=-3.000000,Max=3.000000))
         WarmupTicksPerSecond=1.000000
         RelativeWarmupTime=1.000000
         Name="SpriteEmitter130"
     End Object
     Emitters(1)=SpriteEmitter'HGame.DementorTrailEffect.SpriteEmitter130'
}
