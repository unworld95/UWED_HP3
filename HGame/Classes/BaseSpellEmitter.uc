Class BaseSpellEmitter extends AllSpells;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter18
         UseColorScale=True
         ColorScale(0)=(Color=(B=255))
         ColorScale(1)=(RelativeTime=0.250000,Color=(B=255))
         ColorScale(2)=(RelativeTime=0.500000,Color=(B=192,G=192,R=192))
         ColorScale(3)=(RelativeTime=0.750000,Color=(B=255,G=255,R=255))
         FadeOutStartTime=0.150000
         FadeOut=True
         MaxParticles=25
         RevolutionsPerSecondRange=(Y=(Max=10.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-2.000000,Max=2.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=0.500000,Max=0.500000))
         UniformSize=True
         InitialParticlesPerSecond=20.000000
         Texture=Texture'HP_FX.Particles.Sparkle_BW'
         LifetimeRange=(Min=0.500000,Max=1.000000)
         StartVelocityRange=(X=(Min=-2.000000,Max=2.000000),Y=(Min=-2.000000,Max=2.000000),Z=(Min=1.000000,Max=2.000000))
         Name="SpriteEmitter18"
     End Object
     Emitters(0)=SpriteEmitter'HGame.BaseSpellEmitter.SpriteEmitter18'
}
