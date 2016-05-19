Class MBookPageTrail extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter20
         UseColorScale=True
         ColorScale(0)=(Color=(B=255,G=72,R=118,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=187,G=82,R=77,A=255))
         FadeOutStartTime=3.400000
         FadeOut=True
         FadeInEndTime=0.320000
         FadeIn=True
         MaxParticles=30
         StartLocationRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000))
         SpinParticles=True
         SpinCCWorCW=(X=0.510000)
         SpinsPerSecondRange=(X=(Max=0.500000))
         StartSpinRange=(X=(Min=1.000000,Max=1.000000))
         StartSizeRange=(X=(Min=2.000000,Max=3.000000),Y=(Min=2.000000,Max=3.000000),Z=(Min=0.250000,Max=8.000000))
         UniformSize=True
         InitialParticlesPerSecond=50.000000
         Texture=Texture'HP3_FX.Particles.DustSpecks'
         TextureUSubdivisions=2
         TextureVSubdivisions=2
         StartVelocityRange=(X=(Min=-3.000000,Max=3.000000),Y=(Min=-3.000000,Max=3.000000),Z=(Min=-15.000000,Max=-5.000000))
         Name="SpriteEmitter20"
     End Object
     Emitters(0)=SpriteEmitter'HGame.MBookPageTrail.SpriteEmitter20'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter21
         FadeOutStartTime=2.500000
         FadeOut=True
         FadeInEndTime=0.750000
         FadeIn=True
         MaxParticles=50
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=10.000000)
         StartSizeRange=(X=(Min=0.250000,Max=0.500000),Y=(Min=0.250000,Max=0.500000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.Sparkle_2'
         StartVelocityRange=(X=(Min=3.000000,Max=-3.000000),Y=(Min=3.000000,Max=-3.000000),Z=(Min=-15.000000,Max=-20.000000))
         Name="SpriteEmitter21"
     End Object
     Emitters(1)=SpriteEmitter'HGame.MBookPageTrail.SpriteEmitter21'
}
