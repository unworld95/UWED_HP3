Class LumosFlyEmitter extends SpellFlyEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter13
         UseColorScale=True
         ColorScale(0)=(Color=(G=255,R=255))
         ColorScale(1)=(RelativeTime=0.250000,Color=(G=255,R=255))
         ColorScale(2)=(RelativeTime=0.500000,Color=(B=192,G=192,R=192))
         ColorScale(3)=(RelativeTime=0.750000,Color=(B=255,G=255,R=255))
         FadeOutStartTime=0.150000
         FadeOut=True
         MaxParticles=50
         StartLocationRange=(X=(Min=-1.000000,Max=1.000000),Z=(Min=-1.000000,Max=1.000000))
         UseRevolution=True
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=5.000000)
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=2.500000)
         SizeScale(2)=(RelativeTime=1.000000)
         StartSizeRange=(X=(Min=1.000000,Max=3.000000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         UniformSize=True
         ParticlesPerSecond=50.000000
         InitialParticlesPerSecond=10.000000
         Texture=Texture'HP_FX.Particles.Ring'
         LifetimeRange=(Min=1.000000,Max=1.250000)
         UseVelocityScale=True
         VelocityScaleRepeats=1.000000
         Name="SpriteEmitter13"
     End Object
     Emitters(0)=SpriteEmitter'HGame.LumosFlyEmitter.SpriteEmitter13'
     LightHue=40
     LightSaturation=70
}
