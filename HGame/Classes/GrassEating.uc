Class GrassEating extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter16
         UseDirectionAs=PTDU_Scale
         Acceleration=(Z=-125.000000)
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.100000,Color=(B=128,G=255,R=255))
         ColorScale(1)=(RelativeTime=0.500000,Color=(G=255,R=255))
         ColorScale(2)=(RelativeTime=0.600000,Color=(G=64,R=128))
         ColorScaleRepeats=2.000000
         MaxParticles=50
         StartLocationRange=(X=(Min=-1.000000,Max=1.000000),Y=(Min=-1.000000,Max=1.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.100000,Max=0.500000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.800000,RelativeSize=1.000000)
         SizeScale(2)=(RelativeTime=1.000000)
         StartSizeRange=(X=(Min=0.500000,Max=0.750000),Y=(Min=1.000000,Max=2.000000))
         DrawStyle=PTDS_AlphaModulate_MightNotFogCorrectly
         Texture=Texture'HP_FX.Particles.leaf'
         LifetimeRange=(Min=2.000000,Max=3.000000)
         StartVelocityRange=(X=(Min=-20.000000,Max=40.000000),Y=(Min=-20.000000,Max=20.000000),Z=(Min=100.000000,Max=125.000000))
         Name="SpriteEmitter16"
     End Object
     Emitters(0)=SpriteEmitter'HGame.GrassEating.SpriteEmitter16'
}
