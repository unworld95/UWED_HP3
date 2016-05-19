Class DementorEPRingPush extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         UseDirectionAs=PTDU_Normal
         Acceleration=(Z=10.000000)
         FadeOutStartTime=0.500000
         FadeOut=True
         FadeInEndTime=0.200000
         FadeIn=True
         MaxParticles=1
         StartLocationOffset=(Z=-30.000000)
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.200000,Max=0.200000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=9.000000)
         Texture=Texture'HP3_FX.Particles.WaterRing'
         LifetimeRange=(Min=0.750000,Max=0.750000)
         Name="SpriteEmitter0"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DementorEPRingPush.SpriteEmitter0'
     Begin Object Class=BeamEmitter Name=BeamEmitter0
         BeamDistanceRange=(Min=100.000000,Max=200.000000)
         DetermineEndPointBy=PTEP_Distance
         LowFrequencyPoints=8
         ColorScale(0)=(RelativeTime=0.330000,Color=(B=255,G=255,R=128))
         ColorScale(1)=(RelativeTime=0.660000,Color=(B=255,G=255,R=255))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=128,G=255,R=255))
         FadeOutStartTime=0.750000
         FadeOut=True
         FadeInEndTime=0.250000
         FadeIn=True
         MaxParticles=25
         StartLocationOffset=(Z=-20.000000)
         StartSizeRange=(X=(Min=5.000000,Max=15.000000))
         InitialParticlesPerSecond=50.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.Particles.Bolt2'
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-500.000000,Max=500.000000),Y=(Min=-500.000000,Max=500.000000))
         Name="BeamEmitter0"
     End Object
     Emitters(1)=BeamEmitter'HGame.DementorEPRingPush.BeamEmitter0'
     bHighDetail=True
     bDisableSorting=True
     Tag="ExpectoRingPush"
}
