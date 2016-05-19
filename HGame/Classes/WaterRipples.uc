Class WaterRipples extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter17
         UseDirectionAs=PTDU_Normal
         ColorScale(0)=(Color=(B=248,G=245,R=203))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=201,G=147,R=114))
         FadeOut=True
         MaxParticles=9
         StartLocationRange=(X=(Min=-3.000000,Max=3.000000),Y=(Min=-3.000000,Max=3.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=1.000000,RelativeSize=5.000000)
         StartSizeRange=(X=(Min=5.000000,Max=5.000000),Y=(Min=5.000000,Max=5.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.WaterRing'
         LifetimeRange=(Min=3.000000,Max=5.000000)
         Name="SpriteEmitter17"
     End Object
     Emitters(0)=SpriteEmitter'HGame.WaterRipples.SpriteEmitter17'
}
