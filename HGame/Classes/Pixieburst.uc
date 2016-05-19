Class Pixieburst extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter14
         Acceleration=(Z=-100.000000)
         DampingFactorRange=(X=(Min=0.200000,Max=0.200000),Y=(Min=0.200000,Max=0.200000),Z=(Min=0.200000,Max=0.200000))
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.200000,Color=(B=255,G=180,R=166))
         ColorScale(2)=(RelativeTime=0.750000,Color=(B=255,G=142,R=30,A=255))
         ColorScale(3)=(RelativeTime=1.000000,Color=(A=255))
         FadeOutStartTime=5.340000
         MaxParticles=22
         AutoResetTimeRange=(Min=0.500000,Max=0.500000)
         StartLocationRange=(X=(Min=-6.000000,Max=6.000000),Y=(Min=-6.000000,Max=6.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.250000,Max=0.500000))
         StartSpinRange=(X=(Min=0.250000,Max=0.250000))
         UseSizeScale=True
         StartSizeRange=(X=(Min=4.000000,Max=25.000000),Y=(Min=1.000000,Max=1.000000),Z=(Min=1.000000,Max=1.000000))
         UniformSize=True
         InitialParticlesPerSecond=5000.000000
         Texture=Texture'HP_FX.Particles.flare4'
         StartVelocityRange=(X=(Min=-32.000000,Max=32.000000),Y=(Min=-32.000000,Max=32.000000),Z=(Min=64.000000,Max=128.000000))
         Name="SpriteEmitter14"
     End Object
     Emitters(0)=SpriteEmitter'HGame.Pixieburst.SpriteEmitter14'
}
