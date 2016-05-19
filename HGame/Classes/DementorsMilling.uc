Class DementorsMilling extends CreatureFX;

defaultproperties
{
     Begin Object Class=MeshEmitter Name=MeshEmitter0
         StaticMesh=StaticMesh'HP3_CutScenes_SM.Quidditch.LowPolyDementor_SM'
         FadeOutStartTime=9.000000
         FadeOut=True
         FadeInEndTime=1.000000
         FadeIn=True
         MaxParticles=100
         StartLocationRange=(X=(Min=-1500.000000,Max=1500.000000),Y=(Min=-1500.000000,Max=1500.000000),Z=(Min=-2.000000,Max=2.000000))
         SphereRadiusRange=(Max=1000.000000)
         InitialParticlesPerSecond=100.000000
         LifetimeRange=(Min=30.000000,Max=30.000000)
         StartVelocityRange=(X=(Min=-2.000000,Max=2.000000),Y=(Min=-2.000000,Max=2.000000),Z=(Max=1.000000))
         AddVelocityMultiplierRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=50.000000,Max=50.000000))
         UseVelocityScale=True
         VelocityScale(0)=(RelativeTime=0.010000,RelativeVelocity=(X=-50.000000,Y=50.000000,Z=-20.000000))
         VelocityScale(1)=(RelativeTime=1.000000,RelativeVelocity=(X=50.000000,Y=-50.000000,Z=20.000000))
         VelocityScaleRepeats=3.000000
         RelativeWarmupTime=10.000000
         Name="MeshEmitter0"
     End Object
     Emitters(0)=MeshEmitter'HGame.DementorsMilling.MeshEmitter0'
}
