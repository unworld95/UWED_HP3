Class BundDie extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter67
         UseDirectionAs=PTDU_Scale
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.100000,Color=(B=136,G=167,R=63))
         ColorScale(2)=(RelativeTime=1.000000)
         MaxParticles=30
         StartLocationRange=(X=(Min=25.000000,Max=-25.000000),Y=(Min=25.000000,Max=-25.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.350000,Max=-0.350000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.590000,RelativeSize=0.001000)
         SizeScale(2)=(RelativeTime=0.600000,RelativeSize=0.001000)
         SizeScale(3)=(RelativeTime=1.000000,RelativeSize=1.000000)
         StartSizeRange=(X=(Min=25.000000,Max=25.000000),Y=(Min=10.000000,Max=10.000000))
         UniformSize=True
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.Smoke3'
         LifetimeRange=(Min=1.500000,Max=2.000000)
         StartVelocityRange=(X=(Min=1.000000,Max=1.000000),Y=(Min=1.000000,Max=1.000000),Z=(Min=2.000000,Max=2.000000))
         VelocityLossRange=(X=(Min=15.000000,Max=15.000000),Z=(Min=0.250000,Max=0.250000))
         UseVelocityScale=True
         VelocityScale(1)=(RelativeTime=0.590000)
         VelocityScale(2)=(RelativeTime=0.600000,RelativeVelocity=(Z=100.000000))
         VelocityScale(3)=(RelativeTime=1.000000,RelativeVelocity=(Z=-50.000000))
         VelocityScaleRepeats=5.000000
         Name="SpriteEmitter67"
     End Object
     Emitters(0)=SpriteEmitter'HGame.BundDie.SpriteEmitter67'
}
