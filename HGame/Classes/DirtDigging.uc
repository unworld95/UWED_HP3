Class DirtDigging extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter0
         UseDirectionAs=PTDU_Scale
         Acceleration=(Z=-125.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(G=64,R=128))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=64,G=64,R=128))
         MaxParticles=150
         StartLocationRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=5.000000,Max=-5.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.100000,Max=0.500000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.800000,RelativeSize=1.000000)
         SizeScale(2)=(RelativeTime=1.000000)
         StartSizeRange=(X=(Min=1.000000,Max=1.500000),Y=(Min=3.000000,Max=15.000000))
         UniformSize=True
         DrawStyle=PTDS_AlphaModulate_MightNotFogCorrectly
         Texture=Texture'HP_FX.Particles.rockpiece'
         LifetimeRange=(Min=2.000000,Max=3.000000)
         StartVelocityRange=(X=(Min=-20.000000,Max=40.000000),Y=(Min=-20.000000,Max=20.000000),Z=(Min=100.000000,Max=150.000000))
         Name="SpriteEmitter0"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DirtDigging.SpriteEmitter0'
}
