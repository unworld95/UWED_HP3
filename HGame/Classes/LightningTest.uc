Class LightningTest extends Smoke_Dust;

defaultproperties
{
     Begin Object Class=BeamEmitter Name=BeamEmitter0
         BeamDistanceRange=(Min=4000.000000,Max=4000.000000)
         BeamEndPoints(0)=(ActorTag="tree",offset=(Z=(Min=-5000.000000,Max=-5000.000000)),Weight=1.000000)
         DetermineEndPointBy=PTEP_Actor
         LowFrequencyNoiseRange=(X=(Min=-200.000000,Max=200.000000),Y=(Min=-100.000000,Max=100.000000))
         LowFrequencyPoints=10
         HighFrequencyNoiseRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000))
         HighFrequencyPoints=30
         UseBranching=True
         BranchProbability=(Max=1.000000)
         BranchEmitter=1
         BranchSpawnAmountRange=(Min=1.000000,Max=2.000000)
         LinkupLifetime=True
         UseColorScale=True
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255))
         ColorScaleRepeats=3.000000
         MaxParticles=2
         InitialParticlesPerSecond=2.000000
         Texture=Texture'HP3_FX.Particles.Bolt1'
         LifetimeRange=(Min=0.500000,Max=0.500000)
         StartVelocityRange=(Z=(Min=-1.000000,Max=-1.000000))
         Name="BeamEmitter0"
     End Object
     Emitters(0)=BeamEmitter'HGame.LightningTest.BeamEmitter0'
     Begin Object Class=BeamEmitter Name=BeamEmitter1
         BeamDistanceRange=(Min=700.000000,Max=700.000000)
         DetermineEndPointBy=PTEP_Distance
         LowFrequencyNoiseRange=(X=(Min=-100.000000,Max=100.000000))
         LowFrequencyPoints=5
         HighFrequencyNoiseRange=(X=(Min=-20.000000,Max=20.000000),Y=(Min=-20.000000,Max=20.000000))
         BranchProbability=(Min=1.000000,Max=1.000000)
         BranchSpawnAmountRange=(Max=2.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255))
         ColorScaleRepeats=6.000000
         MaxParticles=20
         StartSizeRange=(X=(Min=30.000000,Max=30.000000))
         Texture=Texture'HP3_FX.Particles.Bolt1'
         LifetimeRange=(Min=0.500000,Max=0.500000)
         StartVelocityRange=(X=(Min=-1.000000,Max=1.000000),Y=(Min=-1.000000,Max=1.000000),Z=(Min=-1.000000,Max=-1.000000))
         Name="BeamEmitter1"
     End Object
     Emitters(1)=BeamEmitter'HGame.LightningTest.BeamEmitter1'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         UseDirectionAs=PTDU_Normal
         UseColorScale=True
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255))
         ColorScaleRepeats=3.000000
         MaxParticles=2
         ResetAfterChange=True
         StartSizeRange=(X=(Min=1750.000000,Max=1750.000000))
         UniformSize=True
         InitialParticlesPerSecond=2.000000
         Texture=Texture'HP3_FX.MultiFrame.SmokeSequence'
         LifetimeRange=(Min=0.500000,Max=0.500000)
         Name="SpriteEmitter0"
     End Object
     Emitters(2)=SpriteEmitter'HGame.LightningTest.SpriteEmitter0'
}
