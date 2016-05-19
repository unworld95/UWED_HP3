Class ImpCrackerExplode extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         Acceleration=(Z=-200.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=166,G=255,R=253))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=3,G=23,R=167))
         FadeOut=True
         MaxParticles=40
         StartLocationOffset=(Z=10.000000)
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=5.000000,Max=5.000000)
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=1.000000),Y=(Min=0.500000,Max=1.000000),Z=(Min=0.500000,Max=1.000000))
         StartSizeRange=(X=(Min=2.000000,Max=8.000000),Y=(Min=2.000000,Max=8.000000),Z=(Min=2.000000,Max=8.000000))
         UniformSize=True
         InitialParticlesPerSecond=200.000000
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         LifetimeRange=(Min=1.000000,Max=1.000000)
         StartVelocityRange=(X=(Min=-128.000000,Max=128.000000),Y=(Min=-128.000000,Max=128.000000),Z=(Max=128.000000))
         Name="SpriteEmitter0"
     End Object
     Emitters(0)=SpriteEmitter'HGame.ImpCrackerExplode.SpriteEmitter0'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter1
         UseDirectionAs=PTDU_Normal
         UseColorScale=True
         ColorScale(0)=(Color=(B=146,G=248,R=224))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=24,G=87,R=235))
         FadeOut=True
         MaxParticles=5
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=1.000000,RelativeSize=10.000000)
         StartSizeRange=(X=(Min=10.000000,Max=10.000000),Y=(Min=10.000000,Max=10.000000),Z=(Min=10.000000,Max=10.000000))
         InitialParticlesPerSecond=10.000000
         Texture=Texture'HP3_FX.Particles.WaterRing'
         LifetimeRange=(Min=1.000000,Max=1.000000)
         Name="SpriteEmitter1"
     End Object
     Emitters(1)=SpriteEmitter'HGame.ImpCrackerExplode.SpriteEmitter1'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter3
         Acceleration=(Z=-10.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=206,G=255,R=253))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=6,G=37,R=72))
         FadeOutStartTime=0.600000
         FadeOut=True
         StartLocationRange=(Z=(Max=50.000000))
         SphereRadiusRange=(Min=3.000000,Max=5.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=5.000000)
         StartSizeRange=(X=(Min=10.000000,Max=10.000000),Y=(Min=16.000000,Max=24.000000),Z=(Min=16.000000,Max=32.000000))
         UniformSize=True
         InitialParticlesPerSecond=20.000000
         Texture=Texture'HP3_FX.Particles.Smoke1'
         LifetimeRange=(Min=1.000000,Max=1.000000)
         StartVelocityRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=20.000000,Max=50.000000))
         Name="SpriteEmitter3"
     End Object
     Emitters(2)=SpriteEmitter'HGame.ImpCrackerExplode.SpriteEmitter3'
}
