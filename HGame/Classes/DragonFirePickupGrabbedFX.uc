Class DragonFirePickupGrabbedFX extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter29
         UseDirectionAs=PTDU_Up
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=17,G=202,R=255))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=192,G=192,R=192))
         ColorScale(3)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255))
         ColorMultiplierRange=(X=(Min=255.000000,Max=255.000000),Z=(Min=200.000000,Max=200.000000))
         FadeOutStartTime=0.500000
         FadeOut=True
         MaxParticles=50
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=20.000000,Max=25.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(X=(Min=-0.250000,Max=0.250000),Y=(Min=-0.250000,Max=0.250000),Z=(Min=0.500000,Max=0.500000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-0.100000,Max=0.750000))
         UseSizeScale=True
         SizeScale(1)=(RelativeTime=0.200000,RelativeSize=2.000000)
         SizeScale(2)=(RelativeTime=0.800000,RelativeSize=3.000000)
         SizeScale(3)=(RelativeTime=1.000000,RelativeSize=1.000000)
         SizeScaleRepeats=5.000000
         StartSizeRange=(X=(Min=10.000000,Max=20.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.flare4'
         LifetimeRange=(Min=0.500000,Max=1.000000)
         StartVelocityRange=(X=(Min=-100.000000,Max=100.000000),Y=(Min=-100.000000,Max=100.000000),Z=(Min=-100.000000,Max=100.000000))
         Name="SpriteEmitter29"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DragonFirePickupGrabbedFX.SpriteEmitter29'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter66
         Acceleration=(Z=20.000000)
         FadeOutStartTime=0.500000
         FadeOut=True
         MaxParticles=30
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=-0.500000,Max=0.500000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-1.000000,Max=1.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=5.000000,Max=8.000000))
         UniformSize=True
         InitialParticlesPerSecond=500.000000
         DrawStyle=PTDS_Darken
         Texture=Texture'HP3_FX.MultiFrame.SmokeSequence'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-75.000000,Max=75.000000),Y=(Min=-75.000000,Max=75.000000),Z=(Min=-35.000000,Max=75.000000))
         VelocityLossRange=(X=(Min=1.000000,Max=2.000000),Y=(Min=1.000000,Max=2.000000),Z=(Min=1.000000,Max=2.000000))
         Name="SpriteEmitter66"
     End Object
     Emitters(1)=SpriteEmitter'HGame.DragonFirePickupGrabbedFX.SpriteEmitter66'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter72
         Acceleration=(Z=-50.000000)
         FadeOutStartTime=1.500000
         FadeOut=True
         MaxParticles=20
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-2.000000,Max=2.000000))
         StartSizeRange=(X=(Min=1.000000,Max=3.000000))
         UniformSize=True
         InitialParticlesPerSecond=200.000000
         Texture=Texture'HP_FX.Particles.Les_Sparkle_04'
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-30.000000,Max=30.000000),Y=(Min=-30.000000,Max=30.000000),Z=(Min=-20.000000,Max=60.000000))
         Name="SpriteEmitter72"
     End Object
     Emitters(2)=SpriteEmitter'HGame.DragonFirePickupGrabbedFX.SpriteEmitter72'
}
