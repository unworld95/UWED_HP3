Class LumosHitComboEmitter extends HitComboEmitter;

defaultproperties
{
     Begin Object Class=SparkEmitter Name=SparkEmitter0
         LineSegmentsRange=(Min=1.000000)
         TimeBetweenSegmentsRange=(Min=1.000000,Max=1.000000)
         MaxParticles=150
         InitialParticlesPerSecond=1000.000000
         Texture=Texture'HP3_FX.Particles.Sparkle_1'
         LifetimeRange=(Min=2.000000,Max=2.900000)
         StartVelocityRange=(X=(Min=-200.000000,Max=200.000000),Y=(Min=-200.000000,Max=200.000000),Z=(Min=-200.000000,Max=200.000000))
         Name="SparkEmitter0"
     End Object
     Emitters(0)=SparkEmitter'HGame.LumosHitComboEmitter.SparkEmitter0'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter10
         FadeOut=True
         MaxParticles=100
         UseRevolution=True
         RevolutionCenterOffsetRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000))
         RevolutionsPerSecondRange=(Z=(Min=1.000000,Max=2.000000))
         StartSizeRange=(X=(Min=5.000000,Max=2.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.Sparkle_1'
         LifetimeRange=(Min=1.500000,Max=2.500000)
         StartVelocityRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=-100.000000,Max=100.000000))
         Name="SpriteEmitter10"
     End Object
     Emitters(1)=SpriteEmitter'HGame.LumosHitComboEmitter.SpriteEmitter10'
     LightHue=40
     LightSaturation=70
}
