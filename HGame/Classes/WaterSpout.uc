Class WaterSpout extends EnvironmentFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter13
         Acceleration=(Z=-128.000000)
         UseColorScale=True
         ColorScale(0)=(RelativeTime=0.500000,Color=(B=179,G=152,R=70))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=170,G=128,R=55))
         CoordinateSystem=PTCS_Relative
         MaxParticles=80
         StartLocationOffset=(Z=-20.000000)
         SpinParticles=True
         DampRotation=True
         StartSizeRange=(X=(Min=2.000000,Max=5.000000),Y=(Min=1.000000,Max=5.000000),Z=(Min=3.000000,Max=5.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.WaterDrop'
         LifetimeRange=(Min=0.500000,Max=0.950000)
         StartVelocityRange=(X=(Min=-33.000000,Max=-36.000000),Z=(Min=-15.000000,Max=15.000000))
         Name="SpriteEmitter13"
     End Object
     Emitters(0)=SpriteEmitter'HGame.WaterSpout.SpriteEmitter13'
}
