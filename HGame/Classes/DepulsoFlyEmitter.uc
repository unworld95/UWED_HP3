Class DepulsoFlyEmitter extends SpellFlyEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter8
         Acceleration=(Z=-10.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(R=255))
         ColorScale(1)=(RelativeTime=0.250000,Color=(R=255))
         ColorScale(2)=(RelativeTime=0.500000,Color=(B=128,G=255,R=255))
         ColorScale(3)=(RelativeTime=0.750000,Color=(R=255))
         ColorScale(4)=(RelativeTime=1.000000,Color=(R=255))
         FadeOutStartTime=0.150000
         FadeOut=True
         MaxParticles=50
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         SpinParticles=True
         SpinCCWorCW=(X=5.000000)
         SpinsPerSecondRange=(X=(Min=1.500000,Max=2.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=1.000000,Max=3.000000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         UniformSize=True
         InitialParticlesPerSecond=50.000000
         Texture=Texture'HP3_FX.Particles.Sparkle_8'
         LifetimeRange=(Min=0.350000,Max=0.500000)
         StartVelocityRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=-50.000000,Max=50.000000))
         Name="SpriteEmitter8"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DepulsoFlyEmitter.SpriteEmitter8'
     LightSaturation=70
}
