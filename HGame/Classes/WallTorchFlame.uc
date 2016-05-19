Class WallTorchFlame extends Fire;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter53
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.400000,Color=(B=91,G=218,R=255))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=30,G=91,R=255))
         ColorScale(3)=(RelativeTime=1.000000)
         MaxParticles=40
         StartLocationRange=(X=(Min=-3.000000,Max=3.000000),Y=(Min=-3.000000,Max=3.000000))
         SpinParticles=True
         SpinCCWorCW=(X=0.250000,Y=0.250000,Z=0.250000)
         SpinsPerSecondRange=(X=(Min=0.150000,Max=0.350000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.200000,RelativeSize=0.500000)
         SizeScale(2)=(RelativeTime=0.600000,RelativeSize=1.000000)
         SizeScale(3)=(RelativeTime=1.000000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=2.000000,Max=5.000000))
         UniformSize=True
         Texture=Texture'EmitterTextures.MultiFrame.LargeFlamesBW'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=1.500000,Max=3.000000)
         StartVelocityRange=(Z=(Min=5.000000,Max=20.000000))
         Name="SpriteEmitter53"
     End Object
     Emitters(0)=SpriteEmitter'HGame.WallTorchFlame.SpriteEmitter53'
     AmbientSound=Sound'SoundEffects.common.torch01'
     DrawScale=0.250000
     SoundRadius=32.000000
     SoundVolume=150
}
