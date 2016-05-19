Class SpellFlyEmitter extends AllSpells;

var float fShutDownTime;

defaultproperties
{
     fShutDownTime=2.200000
     Begin Object Class=SpriteEmitter Name=SpriteEmitter11
         Acceleration=(Z=-10.000000)
         UseColorScale=True
         FadeOutStartTime=0.150000
         FadeOut=True
         MaxParticles=50
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         SpinParticles=True
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=1.000000,Max=3.000000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         UniformSize=True
         InitialParticlesPerSecond=50.000000
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         LifetimeRange=(Min=0.320000,Max=0.320000)
         StartVelocityRange=(Z=(Min=5.000000,Max=30.000000))
         Name="SpriteEmitter11"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SpellFlyEmitter.SpriteEmitter11'
     AutoReset=True
     LightBrightness=150.000000
     LightRadius=8.000000
     LightSaturation=255
     LightPeriod=7
     Physics=PHYS_Trailer
     RemoteRole=ROLE_DumbProxy
     CollisionRadius=2.000000
     CollisionHeight=2.000000
     Mass=4.000000
}
