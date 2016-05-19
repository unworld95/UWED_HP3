Class HitComboEmitter extends AllSpells;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter12
         UseColorScale=True
         FadeOutStartTime=0.150000
         FadeOut=True
         MaxParticles=50
         AutoResetTimeRange=(Min=2.000000,Max=2.000000)
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Y=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         SphereRadiusRange=(Min=65536.000000,Max=65536.000000)
         StartLocationPolarRange=(X=(Min=65536.000000,Max=65536.000000),Y=(Max=65536.000000),Z=(Min=50.000000,Max=50.000000))
         SpinParticles=True
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=1.000000,Max=3.000000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         UniformSize=True
         InitialParticlesPerSecond=1000.000000
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         LifetimeRange=(Min=0.500000,Max=0.500000)
         StartVelocityRange=(X=(Min=-100.000000,Max=100.000000),Y=(Min=-100.000000,Max=100.000000),Z=(Min=-100.000000,Max=100.000000))
         UseVelocityScale=True
         VelocityScale(0)=(RelativeTime=0.010000)
         VelocityScale(1)=(RelativeTime=0.500000,RelativeVelocity=(X=0.100000,Y=0.100000,Z=0.100000))
         VelocityScale(2)=(RelativeTime=1.000000,RelativeVelocity=(X=0.750000,Y=0.750000,Z=0.750000))
         Name="SpriteEmitter12"
     End Object
     Emitters(0)=SpriteEmitter'HGame.HitComboEmitter.SpriteEmitter12'
     LightBrightness=175.000000
     LightRadius=9.000000
     LightSaturation=255
     LightPeriod=7
     Physics=PHYS_Trailer
     RemoteRole=ROLE_DumbProxy
     Mass=4.000000
}
