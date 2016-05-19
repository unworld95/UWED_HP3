Class ImpExplode extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter120
         Acceleration=(Z=128.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=166,G=255,R=253))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=3,G=23,R=167))
         FadeOut=True
         MaxParticles=16
         StartLocationOffset=(Z=10.000000)
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=5.000000,Max=5.000000)
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=1.000000),Y=(Min=0.500000,Max=1.000000),Z=(Min=0.500000,Max=1.000000))
         StartSizeRange=(X=(Min=2.000000,Max=8.000000),Y=(Min=2.000000,Max=8.000000),Z=(Min=2.000000,Max=8.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         LifetimeRange=(Min=0.500000,Max=1.000000)
         StartVelocityRange=(X=(Min=-128.000000,Max=128.000000),Y=(Min=-128.000000,Max=128.000000),Z=(Min=-128.000000,Max=128.000000))
         Name="SpriteEmitter120"
     End Object
     Emitters(0)=SpriteEmitter'HGame.ImpExplode.SpriteEmitter120'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter121
         UseDirectionAs=PTDU_Normal
         UseColorScale=True
         ColorScale(0)=(Color=(B=146,G=248,R=224))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=24,G=87,R=235))
         FadeOut=True
         MaxParticles=20
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=1.000000,RelativeSize=10.000000)
         StartSizeRange=(X=(Min=10.000000,Max=10.000000),Y=(Min=10.000000,Max=10.000000),Z=(Min=10.000000,Max=10.000000))
         Texture=Texture'HP3_FX.Particles.WaterRing'
         LifetimeRange=(Min=0.500000,Max=1.000000)
         Name="SpriteEmitter121"
     End Object
     Emitters(1)=SpriteEmitter'HGame.ImpExplode.SpriteEmitter121'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter124
         Acceleration=(X=5.000000,Y=5.000000,Z=200.000000)
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.100000,Color=(B=234,G=36,R=36))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=45,G=255,R=239))
         FadeOut=True
         MaxParticles=16
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=1.000000,Max=2.000000),Y=(Min=1.000000,Max=2.000000),Z=(Min=1.000000,Max=5.000000))
         StartSizeRange=(X=(Min=5.000000,Max=5.000000),Y=(Min=5.000000,Max=5.000000),Z=(Min=5.000000,Max=5.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.TinyBurst'
         LifetimeRange=(Min=0.500000,Max=0.800000)
         StartVelocityRange=(X=(Min=-500.000000,Max=500.000000),Y=(Min=-500.000000,Max=500.000000))
         Name="SpriteEmitter124"
     End Object
     Emitters(2)=SpriteEmitter'HGame.ImpExplode.SpriteEmitter124'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter128
         Acceleration=(Z=-5.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=206,G=255,R=253))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=6,G=37,R=72))
         FadeOutStartTime=0.500000
         FadeOut=True
         FadeInEndTime=0.250000
         FadeIn=True
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Y=(Min=-2.000000,Max=2.000000),Z=(Max=5.000000))
         SphereRadiusRange=(Min=3.000000,Max=5.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=1.000000,RelativeSize=3.000000)
         StartSizeRange=(X=(Min=16.000000,Max=32.000000),Y=(Min=16.000000,Max=24.000000),Z=(Min=16.000000,Max=32.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.Smoke1'
         LifetimeRange=(Min=0.750000,Max=1.000000)
         StartVelocityRange=(Z=(Min=24.000000,Max=24.000000))
         Name="SpriteEmitter128"
     End Object
     Emitters(3)=SpriteEmitter'HGame.ImpExplode.SpriteEmitter128'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter129
         UseColorScale=True
         ColorScale(0)=(Color=(B=255,G=234,R=176))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=204,G=19,R=56))
         FadeOut=True
         StartLocationOffset=(Z=10.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=1.000000,RelativeSize=6.000000)
         StartSizeRange=(X=(Min=12.000000,Max=12.000000),Y=(Min=16.000000,Max=16.000000),Z=(Min=16.000000,Max=16.000000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP3_FX.Particles.fire_spot2'
         LifetimeRange=(Min=0.500000,Max=1.000000)
         Name="SpriteEmitter129"
     End Object
     Emitters(4)=SpriteEmitter'HGame.ImpExplode.SpriteEmitter129'
}
