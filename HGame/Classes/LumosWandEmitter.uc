Class LumosWandEmitter  extends WandEmitter;

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
         MaxParticles=20
         StartLocationRange=(X=(Min=-1.000000,Max=1.000000),Z=(Min=-1.000000,Max=1.000000))
         UseRevolution=True
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         UseSizeScale=True
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=4.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=8.000000)
         StartSizeRange=(X=(Min=1.000000,Max=3.000000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         UniformSize=True
         InitialParticlesPerSecond=1.000000
         Texture=Texture'HP_FX.Particles.Ring'
         LifetimeRange=(Min=1.000000,Max=2.000000)
         UseVelocityScale=True
         VelocityScaleRepeats=1.000000
         Name="SpriteEmitter13"
     End Object
     Emitters(0)=SpriteEmitter'HGame.LumosWandEmitter.SpriteEmitter13'
     LightHue=40
     LightSaturation=70
}
