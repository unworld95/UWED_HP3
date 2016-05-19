Class SteamPuff extends Smoke_Dust;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=128,G=128,R=128))
         ColorScale(2)=(RelativeTime=1.000000)
         FadeOutStartTime=0.500000
         FadeOut=True
         MaxParticles=50
         Disabled=True
         StartLocationOffset=(Z=10.000000)
         StartLocationRange=(X=(Min=-6.000000,Max=6.000000),Y=(Min=-6.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.400000,Max=0.400000),Y=(Min=0.400000,Max=0.400000),Z=(Min=0.400000,Max=0.400000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.300000,RelativeSize=4.000000)
         SizeScale(2)=(RelativeTime=0.600000,RelativeSize=4.000000)
         SizeScale(3)=(RelativeTime=1.000000,RelativeSize=4.000000)
         StartSizeRange=(X=(Min=8.000000,Max=10.000000),Y=(Min=8.000000,Max=18.000000),Z=(Min=15.000000,Max=15.000000))
         UniformSize=True
         InitialParticlesPerSecond=100.000000
         Texture=Texture'HP3_FX.Particles.Smoke1'
         LifetimeRange=(Min=0.750000,Max=0.750000)
         ResetOnTrigger=True
         StartVelocityRange=(Y=(Min=50.000000,Max=80.000000),Z=(Min=600.000000,Max=800.000000))
         VelocityLossRange=(Z=(Min=2.000000,Max=2.000000))
         Name="SpriteEmitter0"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SteamPuff.SpriteEmitter0'
     Tag="SteamPuff"
     AttachTag="Train"
}
