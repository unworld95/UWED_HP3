Class GlaciusFlyEmitter extends SpellFlyEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter5
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.100000,Color=(B=255,G=128))
         ColorScale(1)=(RelativeTime=0.450000,Color=(B=255,G=128))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255))
         FadeOutStartTime=0.500000
         FadeOut=True
         FadeInEndTime=0.100000
         FadeIn=True
         MaxParticles=30
         UseRevolution=True
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-1.000000,Max=1.000000))
         StartSpinRange=(X=(Min=-5.000000,Max=5.000000))
         RotationNormal=(X=1.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=3.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=5.000000)
         StartSizeRange=(X=(Min=1.500000,Max=1.500000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         UniformSize=True
         ParticlesPerSecond=15.000000
         Texture=Texture'HP3_FX.Particles.GlaciusSpark'
         LifetimeRange=(Min=1.000000,Max=1.000000)
         UseVelocityScale=True
         VelocityScaleRepeats=1.000000
         Name="SpriteEmitter5"
     End Object
     Emitters(0)=SpriteEmitter'HGame.GlaciusFlyEmitter.SpriteEmitter5'
     LightHue=140
     LightSaturation=70
}
