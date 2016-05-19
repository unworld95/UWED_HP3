Class FlyingBookTrail extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter5
         UseColorScale=True
         ColorScale(0)=(Color=(B=128,G=128,R=128,A=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(A=255))
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
         StartSizeRange=(X=(Min=0.250000,Max=4.000000),Y=(Min=0.250000,Max=4.000000),Z=(Min=0.250000,Max=8.000000))
         UniformSize=True
         InitialParticlesPerSecond=25.000000
         Texture=Texture'HP_FX.Particles.Reward_Bronze'
         StartVelocityRange=(X=(Min=-3.000000,Max=3.000000),Y=(Min=-3.000000,Max=3.000000),Z=(Min=-10.000000,Max=-5.000000))
         Name="SpriteEmitter5"
     End Object
     Emitters(0)=SpriteEmitter'HGame.FlyingBookTrail.SpriteEmitter5'
}
