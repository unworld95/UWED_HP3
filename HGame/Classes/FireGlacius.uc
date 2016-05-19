Class FireGlacius extends Fire;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter12
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.400000,Color=(B=91,G=218,R=255))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=30,G=91,R=255))
         ColorScale(3)=(RelativeTime=1.000000)
         MaxParticles=200
         StartLocationRange=(X=(Min=-64.000000,Max=64.000000),Y=(Min=-5.000000,Max=5.000000))
         SpinParticles=True
         SpinCCWorCW=(X=0.250000,Y=0.250000,Z=0.250000)
         SpinsPerSecondRange=(X=(Min=-0.350000,Max=0.350000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.200000,RelativeSize=0.500000)
         SizeScale(2)=(RelativeTime=0.600000,RelativeSize=2.000000)
         SizeScale(3)=(RelativeTime=1.000000,RelativeSize=5.000000)
         StartSizeRange=(X=(Min=4.000000,Max=8.000000),Y=(Min=300.000000,Max=300.000000),Z=(Min=150.000000,Max=150.000000))
         UniformSize=True
         Texture=Texture'EmitterTextures.MultiFrame.LargeFlamesBW'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=6.000000,Max=7.000000)
         StartVelocityRange=(Z=(Min=20.000000,Max=60.000000))
         WarmupTicksPerSecond=2.000000
         RelativeWarmupTime=2.000000
         Name="SpriteEmitter12"
     End Object
     Emitters(0)=SpriteEmitter'HGame.FireGlacius.SpriteEmitter12'
}
