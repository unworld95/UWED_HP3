Class EPWandLightning extends GameFX;

defaultproperties
{
     Begin Object Class=BeamEmitter Name=BeamEmitter6
         BeamEndPoints(0)=(ActorTag="PatronusStagEmitterDest",Weight=1.000000)
         DetermineEndPointBy=PTEP_Actor
         BeamTextureUScale=10.000000
         LowFrequencyNoiseRange=(X=(Min=10.000000,Max=100.000000),Y=(Min=10.000000,Max=100.000000),Z=(Min=10.000000,Max=100.000000))
         LowFrequencyPoints=10
         HighFrequencyNoiseRange=(X=(Min=10.000000,Max=20.000000),Y=(Min=10.000000,Max=20.000000),Z=(Min=10.000000,Max=10.000000))
         HighFrequencyPoints=20
         HFScaleFactors(0)=(RelativeLength=0.200000)
         HFScaleFactors(1)=(FrequencyScale=(X=1.000000,Y=1.000000,Z=1.000000),RelativeLength=1.000000)
         BranchProbability=(Max=1.000000)
         BranchHFPointsRange=(Min=500.000000)
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.100000,Color=(B=255,G=128))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=192,G=192,R=192))
         ColorScale(2)=(RelativeTime=0.999000,Color=(B=157,G=157,R=255))
         ColorScaleRepeats=10.000000
         FadeOutStartTime=11.500000
         FadeOut=True
         FadeInEndTime=1.000000
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=0.010000)
         SizeScale(1)=(RelativeTime=0.010000,RelativeSize=0.010000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=1.000000)
         StartSizeRange=(X=(Min=5.000000,Max=5.000000),Y=(Min=5.000000,Max=5.000000),Z=(Min=5.000000,Max=5.000000))
         InitialParticlesPerSecond=50.000000
         Texture=Texture'HP3_FX.Particles.HotBolt'
         LifetimeRange=(Min=0.050000,Max=0.050000)
         WarmupTicksPerSecond=0.800000
         RelativeWarmupTime=1.000000
         Name="BeamEmitter6"
     End Object
     Emitters(0)=BeamEmitter'HGame.EPWandLightning.BeamEmitter6'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter7
         ColorMultiplierRange=(X=(Min=128.000000,Max=128.000000),Y=(Min=128.000000,Max=128.000000))
         FadeOutStartTime=1.500000
         FadeOut=True
         FadeInEndTime=0.500000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=4
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-0.500000,Max=0.500000))
         StartSizeRange=(X=(Min=10.000000,Max=15.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.flare5'
         LifetimeRange=(Min=2.000000,Max=2.000000)
         Name="SpriteEmitter7"
     End Object
     Emitters(1)=SpriteEmitter'HGame.EPWandLightning.SpriteEmitter7'
     bHighDetail=True
     Tag="DementorEPFinale"
}
