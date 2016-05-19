Class EyeBlinkB extends CreatureFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter47
         UseColorScale=True
         ColorScale(0)=(Color=(B=208,G=63,R=47))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=33,G=7,R=10,A=255))
         ColorScale(2)=(RelativeTime=1.000000)
         ColorMultiplierRange=(Y=(Min=255.000000,Max=255.000000),Z=(Min=255.000000,Max=255.000000))
         MaxParticles=1
         AutoResetTimeRange=(Min=3.000000,Max=5.000000)
         StartLocationRange=(X=(Min=-100.000000,Max=100.000000),Z=(Max=200.000000))
         StartSizeRange=(X=(Min=-8.000000,Max=-4.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.EyeBlinks.EyeBlink2_A01'
         Name="SpriteEmitter47"
     End Object
     Emitters(0)=SpriteEmitter'HGame.EyeBlinkB.SpriteEmitter47'
}
