Class DragonFirePickupFX extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter106
         UseDirectionAs=PTDU_Up
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=17,G=202,R=255))
         ColorScale(2)=(RelativeTime=0.800000,Color=(G=107,R=253))
         ColorScale(3)=(RelativeTime=1.000000)
         ColorMultiplierRange=(X=(Min=255.000000,Max=255.000000),Z=(Min=200.000000,Max=200.000000))
         MaxParticles=50
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=20.000000,Max=20.000000)
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
         LifetimeRange=(Min=1.000000,Max=2.000000)
         Name="SpriteEmitter106"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DragonFirePickupFX.SpriteEmitter106'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter107
         Acceleration=(Z=5.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=24,G=140,R=245))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=5,G=105,R=239))
         FadeOutStartTime=1.750000
         FadeOut=True
         FadeInEndTime=0.400000
         FadeIn=True
         MaxParticles=30
         EffectAxis=PTEA_PositiveZ
         AutoDestroy=True
         StartLocationRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000))
         SpinParticles=True
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=1.000000,RelativeSize=0.500000)
         StartSizeRange=(X=(Min=10.000000,Max=20.000000),Y=(Min=5.000000,Max=5.000000),Z=(Min=5.000000,Max=5.000000))
         UniformSize=True
         UseSkeletalLocationAs=PTSU_SpawnOffset
         RelativeBoneIndexRange=(Min=0.400000,Max=0.800000)
         ParticlesPerSecond=10.000000
         Texture=Texture'HP3_FX.MultiFrame.Fire256'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(Z=(Min=10.000000,Max=25.000000))
         Name="SpriteEmitter107"
     End Object
     Emitters(1)=SpriteEmitter'HGame.DragonFirePickupFX.SpriteEmitter107'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter28
         FadeOutStartTime=1.750000
         FadeOut=True
         FadeInEndTime=0.250000
         FadeIn=True
         MaxParticles=5
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-0.500000,Max=0.500000))
         SizeScale(0)=(RelativeSize=1.500000)
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=4.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=1.500000)
         StartSizeRange=(X=(Min=6.000000,Max=12.000000))
         UniformSize=True
         DrawStyle=PTDS_Darken
         Texture=Texture'HP3_FX.Particles.fire_spot2'
         LifetimeRange=(Min=2.000000,Max=2.000000)
         Name="SpriteEmitter28"
     End Object
     Emitters(2)=SpriteEmitter'HGame.DragonFirePickupFX.SpriteEmitter28'
}
