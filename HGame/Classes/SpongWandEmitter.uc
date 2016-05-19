Class SpongWandEmitter extends WandEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter48
         Acceleration=(Z=25.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(G=128))
         ColorScale(1)=(RelativeTime=0.250000,Color=(G=128))
         ColorScale(2)=(RelativeTime=0.500000,Color=(B=128,R=128))
         ColorScale(3)=(RelativeTime=0.750000,Color=(B=128,R=128))
         ColorScale(4)=(RelativeTime=1.000000,Color=(B=128,R=128))
         FadeOutStartTime=0.750000
         FadeOut=True
         MaxParticles=20
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         SpinParticles=True
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=1.000000)
         StartSizeRange=(X=(Min=1.000000,Max=3.000000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         UniformSize=True
         InitialParticlesPerSecond=5.000000
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         LifetimeRange=(Min=1.000000,Max=1.000000)
         StartVelocityRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000),Z=(Max=50.000000))
         Name="SpriteEmitter48"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SpongWandEmitter.SpriteEmitter48'
     LightHue=80
     LightSaturation=70
}
