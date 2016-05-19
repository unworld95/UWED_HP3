Class DementorEPFinale extends GameFX;

defaultproperties
{
     Begin Object Class=BeamEmitter Name=BeamEmitter0
         BeamEndPoints(0)=(ActorTag="poop5",Weight=1.000000)
         BeamEndPoints(1)=(ActorTag="poop1",Weight=1.000000)
         BeamEndPoints(2)=(ActorTag="poop2",Weight=1.000000)
         BeamEndPoints(3)=(ActorTag="poop3",Weight=1.000000)
         BeamEndPoints(4)=(ActorTag="poop4",Weight=1.000000)
         BeamEndPoints(5)=(ActorTag="poop6",Weight=1.000000)
         DetermineEndPointBy=PTEP_Actor
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
         FadeOutStartTime=3.000000
         FadeOut=True
         FadeInEndTime=1.000000
         MaxParticles=60
         StartSizeRange=(X=(Min=5.000000,Max=5.000000),Y=(Min=5.000000,Max=5.000000),Z=(Min=5.000000,Max=5.000000))
         InitialParticlesPerSecond=50.000000
         Texture=Texture'HP3_FX.Particles.Cracked'
         WarmupTicksPerSecond=0.800000
         RelativeWarmupTime=1.000000
         Name="BeamEmitter0"
     End Object
     Emitters(0)=BeamEmitter'HGame.DementorEPFinale.BeamEmitter0'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         FadeOutStartTime=3.500000
         FadeOut=True
         FadeInEndTime=0.500000
         FadeIn=True
         MaxParticles=20
         StartLocationOffset=(X=500.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=1.000000,Max=1.000000))
         UseRevolutionScale=True
         RevolutionScale(0)=(RelativeRevolution=(Z=0.250000))
         RevolutionScale(1)=(RelativeTime=0.330000,RelativeRevolution=(Z=0.500000))
         RevolutionScale(2)=(RelativeTime=0.660000,RelativeRevolution=(Z=1.000000))
         RevolutionScale(3)=(RelativeTime=1.000000,RelativeRevolution=(Z=1.500000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Max=1.000000))
         StartSizeRange=(X=(Min=40.000000,Max=50.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.gradientdottydot'
         Name="SpriteEmitter0"
     End Object
     Emitters(1)=SpriteEmitter'HGame.DementorEPFinale.SpriteEmitter0'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter4
         UseDirectionAs=PTDU_Normal
         Acceleration=(Z=10.000000)
         FadeOutStartTime=2.500000
         FadeOut=True
         FadeInEndTime=0.250000
         FadeIn=True
         MaxParticles=2
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.200000,Max=0.200000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.200000,RelativeSize=5.000000)
         SizeScale(2)=(RelativeTime=0.250000,RelativeSize=5.500000)
         SizeScale(3)=(RelativeTime=1.000000,RelativeSize=10.000000)
         Texture=Texture'HP3_FX.Particles.WispyRing'
         LifetimeRange=(Min=3.000000,Max=3.000000)
         Name="SpriteEmitter4"
     End Object
     Emitters(2)=SpriteEmitter'HGame.DementorEPFinale.SpriteEmitter4'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter6
         UseDirectionAs=PTDU_Normal
         Acceleration=(Z=5.000000)
         ColorMultiplierRange=(Z=(Min=128.000000,Max=128.000000))
         FadeOutStartTime=2.000000
         FadeOut=True
         MaxParticles=2
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.200000,RelativeSize=5.000000)
         SizeScale(2)=(RelativeTime=0.250000,RelativeSize=5.500000)
         SizeScale(3)=(RelativeTime=1.000000,RelativeSize=10.000000)
         Texture=Texture'HP3_FX.Particles.WispyRing'
         LifetimeRange=(Min=3.000000,Max=3.000000)
         Name="SpriteEmitter6"
     End Object
     Emitters(3)=SpriteEmitter'HGame.DementorEPFinale.SpriteEmitter6'
     Begin Object Class=BeamEmitter Name=BeamEmitter1
         BeamDistanceRange=(Min=500.000000,Max=600.000000)
         DetermineEndPointBy=PTEP_Distance
         BeamTextureUScale=3.000000
         LowFrequencyPoints=8
         HighFrequencyNoiseRange=(X=(Min=-25.000000,Max=25.000000),Y=(Min=-25.000000,Max=25.000000),Z=(Min=-25.000000,Max=25.000000))
         ColorScale(0)=(RelativeTime=0.330000,Color=(B=255,G=255,R=128))
         ColorScale(1)=(RelativeTime=0.660000,Color=(B=255,G=255,R=255))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=128,G=255,R=255))
         FadeOutStartTime=0.750000
         FadeOut=True
         FadeInEndTime=0.250000
         FadeIn=True
         MaxParticles=50
         StartSizeRange=(X=(Min=5.000000,Max=15.000000))
         InitialParticlesPerSecond=50.000000
         Texture=Texture'HP3_FX.Particles.Bolt1'
         LifetimeRange=(Min=1.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-500.000000,Max=500.000000),Y=(Min=-500.000000,Max=500.000000))
         Name="BeamEmitter1"
     End Object
     Emitters(4)=BeamEmitter'HGame.DementorEPFinale.BeamEmitter1'
     Begin Object Class=BeamEmitter Name=BeamEmitter2
         BeamDistanceRange=(Min=300.000000,Max=400.000000)
         DetermineEndPointBy=PTEP_Distance
         BeamTextureUScale=3.000000
         LowFrequencyPoints=8
         HighFrequencyNoiseRange=(X=(Min=-25.000000,Max=25.000000),Y=(Min=-25.000000,Max=25.000000),Z=(Min=-25.000000,Max=25.000000))
         ColorScale(0)=(RelativeTime=0.330000,Color=(B=255,G=255,R=128))
         ColorScale(1)=(RelativeTime=0.660000,Color=(B=255,G=255,R=255))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=128,G=255,R=255))
         FadeOutStartTime=0.750000
         FadeOut=True
         FadeInEndTime=0.250000
         FadeIn=True
         MaxParticles=50
         StartSizeRange=(X=(Min=5.000000,Max=15.000000))
         InitialParticlesPerSecond=50.000000
         Texture=Texture'HP3_FX.Particles.Bolt2'
         LifetimeRange=(Min=1.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-500.000000,Max=500.000000),Y=(Min=-500.000000,Max=500.000000))
         Name="BeamEmitter2"
     End Object
     Emitters(5)=BeamEmitter'HGame.DementorEPFinale.BeamEmitter2'
     bHighDetail=True
     bDisableSorting=True
     Tag="DementorEPFinale"
}
