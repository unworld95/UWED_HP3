Class SpongifyEmitter extends AllSpells;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter43
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.100000,Color=(G=128))
         ColorScale(1)=(RelativeTime=0.500000,Color=(B=64,G=98,R=30))
         ColorScale(2)=(RelativeTime=1.000000,Color=(G=128))
         FadeOutStartTime=0.750000
         FadeOut=True
         FadeInEndTime=0.330000
         FadeIn=True
         MaxParticles=20
         StartLocationOffset=(Z=15.000000)
         StartLocationRange=(X=(Min=-52.000000,Max=52.000000),Y=(Min=-52.000000,Max=52.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-0.500000,Max=0.500000))
         StartSpinRange=(X=(Min=-0.020000,Max=0.020000))
         StartSizeRange=(X=(Min=2.000000,Max=3.000000),Y=(Min=71.209000,Max=71.209000),Z=(Min=1.000000,Max=1.000000))
         UniformSize=True
         UseSkeletalLocationAs=PTSU_SpawnOffset
         Texture=Texture'HP_FX.Particles.Les_Sparkle_04'
         LifetimeRange=(Min=1.000000,Max=1.000000)
         Name="SpriteEmitter43"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SpongifyEmitter.SpriteEmitter43'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter45
         Acceleration=(Z=-700.000000)
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.300000,Color=(G=128))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=128,G=128))
         FadeOutStartTime=1.000000
         FadeOut=True
         FadeInEndTime=0.400000
         FadeIn=True
         MaxParticles=20
         StartLocationOffset=(Z=15.000000)
         StartLocationRange=(X=(Min=-60.000000,Max=60.000000),Y=(Min=-60.000000,Max=60.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=1.000000,Max=1.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         SizeScale(0)=(RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=7.000000,Max=8.000000))
         UniformSize=True
         UseSkeletalLocationAs=PTSU_SpawnOffset
         Texture=Texture'HP_FX.Particles.Les_Sparkle_01'
         LifetimeRange=(Min=1.000000,Max=1.750000)
         StartVelocityRange=(Z=(Min=300.000000,Max=500.000000))
         VelocityScale(1)=(RelativeTime=0.250000)
         VelocityScale(2)=(RelativeTime=0.350000,RelativeVelocity=(Z=10.000000))
         VelocityScale(3)=(RelativeTime=0.750000,RelativeVelocity=(Z=2.000000))
         Name="SpriteEmitter45"
     End Object
     Emitters(1)=SpriteEmitter'HGame.SpongifyEmitter.SpriteEmitter45'
}
