Class GlaciusWandEmitter extends WandEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         UseColorScale=True
         ColorScale(0)=(Color=(B=255,G=128))
         ColorScale(1)=(RelativeTime=0.250000,Color=(B=255,G=128))
         ColorScale(2)=(RelativeTime=0.500000,Color=(B=192,G=192,R=192))
         ColorScale(3)=(RelativeTime=0.750000,Color=(B=255,G=255,R=255))
         FadeOutStartTime=0.400000
         FadeOut=True
         MaxParticles=25
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         RevolutionsPerSecondRange=(Y=(Max=10.000000))
         SpinParticles=True
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=1.000000,Max=3.000000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         UniformSize=True
         InitialParticlesPerSecond=20.000000
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         LifetimeRange=(Min=0.750000,Max=1.000000)
         StartVelocityRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=-50.000000,Max=50.000000))
         VelocityLossRange=(X=(Min=4.000000,Max=5.000000),Y=(Min=4.000000,Max=5.000000),Z=(Min=4.000000,Max=5.000000))
         Name="SpriteEmitter0"
     End Object
     Emitters(0)=SpriteEmitter'HGame.GlaciusWandEmitter.SpriteEmitter0'
     LightHue=140
     LightSaturation=70
}
