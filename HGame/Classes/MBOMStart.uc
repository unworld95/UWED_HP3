Class MBOMStart extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter100
         Acceleration=(Z=-20.000000)
         ColorMultiplierRange=(Y=(Min=254.000000,Max=255.000000),Z=(Min=255.000000,Max=255.000000))
         FadeOutStartTime=1.250000
         FadeOut=True
         MaxParticles=30
         StartLocationRange=(X=(Min=-20.000000,Max=20.000000),Y=(Min=-20.000000,Max=20.000000),Z=(Min=-20.000000,Max=20.000000))
         UseRevolution=True
         RevolutionCenterOffsetRange=(Z=(Min=5.000000,Max=10.000000))
         RevolutionsPerSecondRange=(Z=(Min=0.500000,Max=1.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=4.000000)
         StartSizeRange=(X=(Min=10.000000,Max=10.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.MultiFrame.SmokeSequence'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         LifetimeRange=(Min=1.500000,Max=1.500000)
         StartVelocityRange=(X=(Min=-20.000000,Max=20.000000),Y=(Min=-20.000000,Max=20.000000),Z=(Min=50.000000,Max=50.000000))
         Name="SpriteEmitter100"
     End Object
     Emitters(1)=SpriteEmitter'HGame.MBOMStart.SpriteEmitter100'
}
