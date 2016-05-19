Class FlyingBookProjectile extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter85
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=78,G=147,R=241))
         ColorScale(2)=(RelativeTime=0.900000,Color=(B=78,G=147,R=241))
         ColorScale(3)=(RelativeTime=1.000000)
         ColorScaleRepeats=3.000000
         CoordinateSystem=PTCS_Relative
         MaxParticles=40
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=4.000000,Max=4.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(X=(Min=-1.000000,Max=1.000000),Y=(Min=-1.000000,Max=1.000000),Z=(Min=-1.000000,Max=1.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=0.500000))
         StartSizeRange=(X=(Min=1.000000,Max=2.500000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Les_Sparkle_01'
         WarmupTicksPerSecond=1.000000
         RelativeWarmupTime=1.000000
         Name="SpriteEmitter85"
     End Object
     Emitters(0)=SpriteEmitter'HGame.FlyingBookProjectile.SpriteEmitter85'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter86
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=128,G=128,R=128))
         ColorScale(2)=(RelativeTime=1.000000)
         FadeOutStartTime=0.500000
         FadeOut=True
         MaxParticles=50
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Y=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-0.500000,Max=0.500000))
         StartSizeRange=(X=(Min=0.500000,Max=2.000000))
         UniformSize=True
         ParticlesPerSecond=50.000000
         Texture=Texture'HP_FX.Particles.Reward_Bronze'
         LifetimeRange=(Min=1.000000,Max=1.000000)
         StartVelocityRange=(Z=(Max=5.000000))
         Name="SpriteEmitter86"
     End Object
     Emitters(1)=SpriteEmitter'HGame.FlyingBookProjectile.SpriteEmitter86'
}
