Class LumosSparklesEmitter extends AllSpells;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitterLumosTrigger
         Acceleration=(Z=-200.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=255,G=255,R=255))
         FadeOutStartTime=0.200000
         FadeOut=True
         MaxParticles=20
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-1.000000,Max=1.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=0.010000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=0.010000)
         StartSizeRange=(X=(Min=1.000000,Max=2.000000),Y=(Min=1.000000,Max=2.000000),Z=(Min=2.000000))
         UniformSize=True
         InitialParticlesPerSecond=40.000000
         Texture=Texture'HP_FX.Particles.flare4'
         LifetimeRange=(Min=0.250000,Max=0.500000)
         StartVelocityRange=(X=(Min=-2.000000,Max=-2.000000),Y=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         Name="SpriteEmitterLumosTrigger"
     End Object
     Emitters(0)=SpriteEmitter'HGame.LumosSparklesEmitter.SpriteEmitterLumosTrigger'
     RemoteRole=ROLE_DumbProxy
     Tag="LumosSparklesEmitter"
     DrawScale=0.100000
     Mass=4.000000
}
