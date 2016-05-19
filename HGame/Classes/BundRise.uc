Class BundRise extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter53
         UseDirectionAs=PTDU_Scale
         Acceleration=(Z=-100.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(G=64,R=128))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=64,G=64,R=128))
         MaxParticles=50
         StartLocationRange=(X=(Min=-25.000000,Max=25.000000),Y=(Min=-25.000000,Max=25.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.100000,Max=0.500000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.800000,RelativeSize=1.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=0.250000)
         StartSizeRange=(X=(Min=3.000000,Max=3.000000),Y=(Min=1.000000,Max=1.000000))
         UniformSize=True
         DrawStyle=PTDS_AlphaModulate_MightNotFogCorrectly
         Texture=Texture'HP_FX.Particles.rockpiece'
         LifetimeRange=(Min=1.000000,Max=1.250000)
         StartVelocityRange=(X=(Min=-20.000000,Max=40.000000),Y=(Min=-20.000000,Max=20.000000),Z=(Min=50.000000,Max=75.000000))
         Name="SpriteEmitter53"
     End Object
     Emitters(0)=SpriteEmitter'HGame.BundRise.SpriteEmitter53'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter54
         UseDirectionAs=PTDU_Scale
         UseColorScale=True
         ColorScale(0)=(Color=(B=82,G=82,R=109))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=64,G=64,R=128))
         FadeOutStartTime=1.500000
         FadeOut=True
         FadeInEndTime=0.300000
         FadeIn=True
         MaxParticles=30
         StartLocationRange=(X=(Min=-25.000000,Max=25.000000),Y=(Min=-25.000000,Max=25.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.100000,Max=0.500000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.800000,RelativeSize=1.000000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=0.250000)
         StartSizeRange=(X=(Min=8.000000,Max=8.000000),Y=(Min=1.000000,Max=1.000000))
         UniformSize=True
         InitialParticlesPerSecond=10.000000
         Texture=Texture'HP_FX.Particles.Smoke1'
         LifetimeRange=(Min=1.750000,Max=2.000000)
         StartVelocityRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000),Z=(Min=15.000000,Max=20.000000))
         Name="SpriteEmitter54"
     End Object
     Emitters(1)=SpriteEmitter'HGame.BundRise.SpriteEmitter54'
}
