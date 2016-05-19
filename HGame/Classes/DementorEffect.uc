Class DementorEffect extends SpellFlyEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter26
         Acceleration=(Z=-5.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=240,G=165,R=102))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=213,G=136,R=215))
         ColorScale(3)=(RelativeTime=1.000000)
         ColorScaleRepeats=5.000000
         MaxParticles=5
         StartLocationRange=(X=(Min=-9.000000,Max=9.000000),Y=(Min=-9.000000,Max=9.000000),Z=(Min=-12.000000,Max=12.000000))
         StartLocationPolarRange=(X=(Min=-15.000000,Max=15.000000),Y=(Min=-15.000000,Max=15.000000),Z=(Min=15.000000,Max=-15.000000))
         StartSizeRange=(X=(Min=1.000000,Max=3.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.Smoke3'
         LifetimeRange=(Max=5.000000)
         StartVelocityRange=(Z=(Min=-5.000000))
         WarmupTicksPerSecond=1.000000
         RelativeWarmupTime=1.000000
         Name="SpriteEmitter26"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DementorEffect.SpriteEmitter26'
     bDynamicLight=False
}
