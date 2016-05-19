Class EPPatronusLightning extends GameFX;

defaultproperties
{
     Begin Object Class=BeamEmitter Name=BeamEmitter0
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
         FadeOutStartTime=110.500000
         FadeInEndTime=1.000000
         MaxParticles=20
         StartSizeRange=(X=(Min=5.000000,Max=5.000000),Y=(Min=5.000000,Max=5.000000),Z=(Min=5.000000,Max=5.000000))
         InitialParticlesPerSecond=50.000000
         Texture=Texture'HP3_FX.Particles.HotBolt'
         LifetimeRange=(Min=0.100000,Max=0.100000)
         WarmupTicksPerSecond=0.800000
         RelativeWarmupTime=1.000000
         Name="BeamEmitter0"
     End Object
     Emitters(0)=BeamEmitter'HGame.EPPatronusLightning.BeamEmitter0'
     bHighDetail=True
     Tag="DementorEPFinale"
}
