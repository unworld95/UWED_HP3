Class StatueDraconifors extends GameFX;

#exec TEXTURE IMPORT FILE=Textures\SPSdraconifor.bmp NAME=SPSdraconifor

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter23
         UseColorScale=True
         FadeOutStartTime=9.000000
         FadeOut=True
         FadeInEndTime=0.500000
         FadeIn=True
         MaxParticles=16
         StartLocationOffset=(Z=10.000000)
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=16.000000,Max=16.000000)
         UseColorFromMesh=True
         SpawnOnlyInDirectionOfNormal=True
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=0.100000,Max=1.000000))
         SpinsPerSecondRange=(X=(Min=0.500000,Max=3.000000),Y=(Min=0.500000,Max=3.000000))
         StartSizeRange=(X=(Min=-2.000000,Max=-2.500000),Y=(Min=2.000000,Max=4.000000),Z=(Min=2.000000,Max=4.000000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'SPSdraconifor'
         LifetimeRange=(Min=0.500000,Max=0.500000)
         StartVelocityRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000),Z=(Min=-1.000000,Max=1.000000))
         WarmupTicksPerSecond=5.000000
         RelativeWarmupTime=5.000000
         Name="SpriteEmitter23"
     End Object
     Emitters(0)=SpriteEmitter'HGame.StatueDraconifors.SpriteEmitter23'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter59
         ColorScale(0)=(RelativeTime=0.350000,Color=(R=255))
         ColorScale(1)=(RelativeTime=0.700000,Color=(B=64,G=128,R=255))
         FadeOutStartTime=0.200000
         FadeOut=True
         FadeInEndTime=0.100000
         FadeIn=True
         MaxParticles=15
         StartLocationRange=(X=(Min=-30.000000,Max=30.000000),Y=(Min=-20.000000,Max=20.000000),Z=(Min=-10.000000,Max=30.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-1.000000,Max=1.000000))
         StartSizeRange=(X=(Min=0.500000,Max=1.500000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         LifetimeRange=(Min=0.250000,Max=0.250000)
         StartVelocityRange=(Z=(Min=10.000000,Max=20.000000))
         Name="SpriteEmitter59"
     End Object
     Emitters(1)=SpriteEmitter'HGame.StatueDraconifors.SpriteEmitter59'
     AttachTag="StatueDraconifors"
}
