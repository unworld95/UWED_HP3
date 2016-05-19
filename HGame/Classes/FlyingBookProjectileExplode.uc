Class FlyingBookProjectileExplode extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter87
         Acceleration=(Z=-85.000000)
         DampingFactorRange=(X=(Min=0.200000,Max=0.200000),Y=(Min=0.200000,Max=0.200000),Z=(Min=0.200000,Max=0.200000))
         UseColorScale=True
         ColorScale(0)=(Color=(B=190,G=50))
         ColorScale(1)=(RelativeTime=0.450000,Color=(B=190,G=50))
         ColorScale(2)=(RelativeTime=0.750000,Color=(B=64,G=128,R=255,A=255))
         ColorScale(3)=(RelativeTime=1.000000,Color=(A=255))
         FadeOutStartTime=5.340000
         MaxParticles=40
         AutoResetTimeRange=(Min=0.500000,Max=0.500000)
         StartLocationRange=(X=(Min=-6.000000,Max=6.000000),Y=(Min=-6.000000,Max=6.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-1.000000,Max=1.000000))
         StartSpinRange=(X=(Min=0.250000,Max=0.250000))
         StartSizeRange=(X=(Min=1.000000,Max=3.000000),Y=(Min=1.000000,Max=20.000000),Z=(Min=1.000000,Max=20.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         Texture=Texture'HP_FX.Particles.Reward_Bronze'
         LifetimeRange=(Min=1.000000,Max=1.500000)
         StartVelocityRange=(X=(Min=-20.000000,Max=20.000000),Y=(Min=-20.000000,Max=20.000000),Z=(Min=30.000000,Max=65.000000))
         Name="SpriteEmitter87"
     End Object
     Emitters(0)=SpriteEmitter'HGame.FlyingBookProjectileExplode.SpriteEmitter87'
}
