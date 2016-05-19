Class DementorEPCloud extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter18
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=128,G=64))
         ColorScale(2)=(RelativeTime=1.000000)
         FadeOutStartTime=3.000000
         FadeOut=True
         FadeInEndTime=1.000000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=40
         StartLocationRange=(X=(Min=-20.000000,Max=20.000000),Y=(Min=-20.000000,Max=20.000000),Z=(Min=-30.000000,Max=40.000000))
         SphereRadiusRange=(Min=200.000000,Max=300.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=-0.350000,Max=0.350000))
         StartSizeRange=(X=(Min=50.000000,Max=75.000000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.MultiFrame.SmokeSequence'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Max=3.500000)
         StartVelocityRange=(X=(Min=2.000000,Max=5.000000),Y=(Min=2.000000,Max=5.000000),Z=(Min=4.000000,Max=5.000000))
         VelocityLossRange=(X=(Min=3.000000,Max=3.000000),Y=(Min=3.000000,Max=3.000000),Z=(Min=1.000000,Max=1.000000))
         UseVelocityScale=True
         VelocityScale(0)=(RelativeTime=0.100000,RelativeVelocity=(X=25.000000,Y=-25.000000,Z=25.000000))
         VelocityScale(1)=(RelativeTime=0.500000,RelativeVelocity=(X=-25.000000,Y=25.000000,Z=-25.000000))
         VelocityScaleRepeats=1.000000
         RelativeWarmupTime=3.000000
         Name="SpriteEmitter18"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DementorEPCloud.SpriteEmitter18'
     Begin Object Class=BeamEmitter Name=BeamEmitter8
         BeamDistanceRange=(Min=40.000000,Max=60.000000)
         DetermineEndPointBy=PTEP_Distance
         BeamTextureUScale=3.000000
         HighFrequencyNoiseRange=(X=(Min=-25.000000,Max=25.000000),Y=(Min=-25.000000,Max=25.000000),Z=(Min=-25.000000,Max=25.000000))
         HighFrequencyPoints=5
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.330000,Color=(B=255,G=255,R=128))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=255,G=255,R=255))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=128,G=255,R=255))
         FadeOutStartTime=0.500000
         FadeOut=True
         FadeInEndTime=0.250000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=20
         StartSizeRange=(X=(Min=5.000000,Max=15.000000))
         InitialParticlesPerSecond=50.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.Particles.Bolt1'
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-100.000000,Max=100.000000),Y=(Min=-100.000000,Max=100.000000),Z=(Min=-100.000000,Max=100.000000))
         Name="BeamEmitter8"
     End Object
     Emitters(1)=BeamEmitter'HGame.DementorEPCloud.BeamEmitter8'
}
