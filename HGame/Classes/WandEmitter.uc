Class WandEmitter extends AllSpells;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=WandSparkles
         Acceleration=(Z=-10.000000)
         UseColorScale=True
         FadeOutStartTime=0.150000
         FadeOut=True
         MaxParticles=30
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         SpinParticles=True
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=1.500000)
         StartSizeRange=(X=(Min=1.000000,Max=3.000000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         UniformSize=True
         InitialParticlesPerSecond=50.000000
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         LifetimeRange=(Min=0.320000,Max=0.500000)
         StartVelocityRange=(X=(Min=-30.000000,Max=30.000000),Y=(Min=-30.000000,Max=30.000000),Z=(Max=30.000000))
         Name="WandSparkles"
     End Object
     Emitters(0)=SpriteEmitter'HGame.WandEmitter.WandSparkles'
     AutoReset=True
     LightBrightness=130.000000
     LightSaturation=255
     Physics=PHYS_Trailer
     RemoteRole=ROLE_DumbProxy
     Mass=4.000000
}
