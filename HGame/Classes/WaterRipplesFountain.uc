Class WaterRipplesFountain extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter26
         UseDirectionAs=PTDU_Normal
         Acceleration=(X=-15.000000)
         ColorScale(0)=(Color=(B=248,G=245,R=203))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=201,G=147,R=114))
         ColorMultiplierRange=(X=(Min=150.000000,Max=200.000000))
         FadeOut=True
         MaxParticles=30
         StartLocationRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-10.000000,Max=10.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=1.000000,RelativeSize=5.000000)
         StartSizeRange=(X=(Min=8.000000,Max=10.000000),Y=(Min=5.000000,Max=5.000000))
         UniformSize=True
         ParticlesPerSecond=10.000000
         Texture=Texture'HP3_FX.Particles.WaterRing'
         LifetimeRange=(Min=3.000000,Max=5.000000)
         StartVelocityRange=(X=(Min=-5.000000,Max=-10.000000))
         Name="SpriteEmitter26"
     End Object
     Emitters(0)=SpriteEmitter'HGame.WaterRipplesFountain.SpriteEmitter26'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter30
         Acceleration=(Z=-3.000000)
         FadeOutStartTime=1.000000
         FadeOut=True
         FadeInEndTime=0.100000
         FadeIn=True
         MaxParticles=50
         StartLocationRange=(X=(Min=-16.000000,Max=16.000000),Y=(Min=-16.000000,Max=16.000000),Z=(Max=8.000000))
         StartSizeRange=(X=(Min=3.000000,Max=4.000000))
         UniformSize=True
         ParticlesPerSecond=5.000000
         Texture=Texture'HP3_FX.MultiFrame.SmokeSequence'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         UseRandomSubdivision=True
         LifetimeRange=(Min=1.000000,Max=1.500000)
         StartVelocityRange=(X=(Min=-20.000000,Max=20.000000),Y=(Min=-20.000000,Max=20.000000),Z=(Min=5.000000,Max=30.000000))
         WarmupTicksPerSecond=10.000000
         RelativeWarmupTime=10.000000
         Name="SpriteEmitter30"
     End Object
     Emitters(1)=SpriteEmitter'HGame.WaterRipplesFountain.SpriteEmitter30'
}
