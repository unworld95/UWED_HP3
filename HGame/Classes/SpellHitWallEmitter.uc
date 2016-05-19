Class SpellHitWallEmitter extends AllSpells;

var float fShutDownTime;

defaultproperties
{
     fShutDownTime=2.200000
     Begin Object Class=SpriteEmitter Name=SpriteEmitter10
         UseCollision=True
         MaxCollisions=(Max=1.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=130,G=168,R=179))
         ColorScale(2)=(RelativeTime=1.000000)
         MaxParticles=40
         AutoResetTimeRange=(Min=1.000000,Max=1.000000)
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=5.000000,Max=10.000000)
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=-0.500000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=5.000000,Max=10.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Smoke1'
         LifetimeRange=(Min=0.750000,Max=1.000000)
         StartVelocityRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=-25.000000,Max=25.000000))
         VelocityLossRange=(X=(Min=4.500000,Max=4.500000),Y=(Min=4.500000,Max=4.500000),Z=(Min=1.000000,Max=1.000000))
         Name="SpriteEmitter10"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SpellHitWallEmitter.SpriteEmitter10'
     LightSaturation=255
     Physics=PHYS_Trailer
     RemoteRole=ROLE_DumbProxy
     CollisionRadius=2.000000
     CollisionHeight=2.000000
     Mass=4.000000
}
