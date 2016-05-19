Class AloWandEmitter extends WandEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter18
         Acceleration=(Z=-10.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=255))
         ColorScale(1)=(RelativeTime=0.250000,Color=(B=255))
         ColorScale(2)=(RelativeTime=0.500000,Color=(B=192,G=192,R=192))
         ColorScale(3)=(RelativeTime=0.750000,Color=(B=255,G=255,R=255))
         FadeOutStartTime=0.150000
         FadeOut=True
         MaxParticles=20
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
         Texture=Texture'HP_FX.Particles.Key3'
         LifetimeRange=(Min=0.500000,Max=1.000000)
         StartVelocityRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000),Z=(Max=30.000000))
         Name="SpriteEmitter18"
     End Object
     Emitters(0)=SpriteEmitter'HGame.AloWandEmitter.SpriteEmitter18'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter1
         Acceleration=(Z=20.000000)
         ColorScale(0)=(Color=(B=255))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=255))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=192,G=192,R=192))
         FadeOut=True
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=5.000000,Max=5.000000))
         StartSizeRange=(X=(Min=2.000000,Max=2.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.swirl001'
         LifetimeRange=(Min=1.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-15.000000,Max=15.000000),Y=(Min=-15.000000,Max=15.000000))
         Name="SpriteEmitter1"
     End Object
     Emitters(1)=SpriteEmitter'HGame.AloWandEmitter.SpriteEmitter1'
     LightHue=140
     LightSaturation=70
}
