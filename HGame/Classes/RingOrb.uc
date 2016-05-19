Class RingOrb extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter12
         UseDirectionAs=PTDU_Normal
         ProjectionNormal=(X=0.250000,Y=0.250000,Z=-1.000000)
         Acceleration=(Y=0.500000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=188,G=237,R=243))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=133,G=189,R=205))
         MaxParticles=1
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=36.000000,Max=36.000000))
         UseRotationFrom=PTRS_Offset
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=0.500000))
         StartSizeRange=(X=(Min=20.000000,Max=20.000000),Y=(Min=20.000000,Max=20.000000),Z=(Min=20.000000,Max=20.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.WaterRing'
         UseVelocityScale=True
         VelocityScale(0)=(RelativeVelocity=(X=1.000000,Y=-2.000000,Z=1.000000))
         VelocityScale(1)=(RelativeTime=0.500000,RelativeVelocity=(X=-1.000000,Y=2.000000,Z=-1.000000))
         VelocityScale(2)=(RelativeTime=1.000000,RelativeVelocity=(X=5.000000,Y=-5.000000,Z=5.000000))
         VelocityScaleRepeats=1.000000
         Name="SpriteEmitter12"
     End Object
     Emitters(0)=SpriteEmitter'HGame.RingOrb.SpriteEmitter12'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter18
         UseDirectionAs=PTDU_Normal
         ProjectionNormal=(X=0.500000,Y=0.500000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=124,G=209,R=224))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=141,G=183,R=205))
         MaxParticles=1
         UseRevolution=True
         RevolutionsPerSecondRange=(Z=(Min=36.000000,Max=36.000000))
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.500000,Max=0.500000))
         StartSizeRange=(X=(Min=20.000000,Max=20.000000),Y=(Min=20.000000,Max=20.000000),Z=(Min=20.000000,Max=20.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.WaterRing'
         UseVelocityScale=True
         VelocityScale(0)=(RelativeVelocity=(X=1.000000,Y=-2.000000,Z=1.000000))
         VelocityScale(1)=(RelativeTime=0.500000,RelativeVelocity=(X=-1.000000,Y=2.000000,Z=1.000000))
         VelocityScale(2)=(RelativeTime=1.000000,RelativeVelocity=(X=5.000000,Y=5.000000,Z=5.000000))
         VelocityScaleRepeats=1.000000
         Name="SpriteEmitter18"
     End Object
     Emitters(1)=SpriteEmitter'HGame.RingOrb.SpriteEmitter18'
}
