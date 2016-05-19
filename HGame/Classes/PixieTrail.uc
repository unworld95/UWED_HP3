Class PixieTrail extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter1
         UseColorScale=True
         ColorScale(0)=(Color=(B=255,G=72,R=118,A=255))
         ColorScale(1)=(RelativeTime=0.800000,Color=(B=248,G=30,R=18,A=255))
         ColorScale(2)=(RelativeTime=1.000000)
         FadeOutStartTime=3.400000
         FadeOut=True
         FadeInEndTime=0.320000
         FadeIn=True
         MaxParticles=5
         StartLocationRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000))
         SpinParticles=True
         SpinCCWorCW=(X=0.510000)
         SpinsPerSecondRange=(X=(Max=0.500000))
         StartSpinRange=(X=(Min=1.000000,Max=1.000000))
         StartSizeRange=(X=(Min=0.250000,Max=8.000000),Y=(Min=0.250000,Max=8.000000),Z=(Min=0.250000,Max=8.000000))
         UniformSize=True
         InitialParticlesPerSecond=25.000000
         Texture=Texture'HP_FX.Particles.Les_Sparkle_01'
         LifetimeRange=(Min=1.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-5.000000,Max=5.000000),Y=(Min=-5.000000,Max=5.000000),Z=(Min=-20.000000,Max=-10.000000))
         Name="SpriteEmitter1"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PixieTrail.SpriteEmitter1'
}
