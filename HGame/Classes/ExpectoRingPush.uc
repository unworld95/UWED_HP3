Class ExpectoRingPush extends GameFX;

defaultproperties
{
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
     Emitters(0)=SpriteEmitter'HGame.ExpectoRingPush.SpriteEmitter4'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter8
         UseDirectionAs=PTDU_Normal
         Acceleration=(Z=5.000000)
         ColorMultiplierRange=(Z=(Min=128.000000,Max=128.000000))
         FadeOutStartTime=2.000000
         FadeOut=True
         MaxParticles=5
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.200000,RelativeSize=5.000000)
         SizeScale(2)=(RelativeTime=0.250000,RelativeSize=5.500000)
         SizeScale(3)=(RelativeTime=1.000000,RelativeSize=10.000000)
         Texture=Texture'HP3_FX.Particles.WaterRing'
         LifetimeRange=(Min=3.000000,Max=3.000000)
         Name="SpriteEmitter8"
     End Object
     Emitters(1)=SpriteEmitter'HGame.ExpectoRingPush.SpriteEmitter8'
     Begin Object Class=BeamEmitter Name=BeamEmitter6
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
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.Particles.Bolt1'
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-500.000000,Max=500.000000),Y=(Min=-500.000000,Max=500.000000))
         Name="BeamEmitter6"
     End Object
     Emitters(2)=BeamEmitter'HGame.ExpectoRingPush.BeamEmitter6'
     bSuperHighDetail=True
     bDisableSorting=True
     Tag="ExpectoRingPush"
}
