Class PeevesStinkPellet extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter74
         Acceleration=(Z=5.000000)
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.250000,Color=(G=64,R=128))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=128,G=255,R=128))
         ColorScale(2)=(RelativeTime=1.000000,Color=(B=64,G=179,R=255))
         ColorScaleRepeats=1.000000
         FadeOutStartTime=1.500000
         FadeOut=True
         FadeInEndTime=0.200000
         FadeIn=True
         MaxParticles=40
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Y=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=4.000000)
         StartSizeRange=(X=(Min=2.000000,Max=2.000000))
         UniformSize=True
         InitialParticlesPerSecond=500.000000
         Texture=Texture'HP3_FX.MultiFrame.SmokeSequence'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         SubdivisionStart=1
         SubdivisionEnd=16
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(Z=(Max=5.000000))
         Name="SpriteEmitter74"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PeevesStinkPellet.SpriteEmitter74'
}
