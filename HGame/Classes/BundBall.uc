Class BundBall extends SpellFlyEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter50
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.400000,Color=(B=169,G=52,R=46))
         ColorScale(2)=(RelativeTime=1.000000)
         CoordinateSystem=PTCS_Relative
         MaxParticles=20
         StartLocationShape=PTLS_Sphere
         SphereRadiusRange=(Min=4.000000,Max=4.000000)
         UseRevolution=True
         RevolutionsPerSecondRange=(X=(Min=0.100000,Max=1.000000),Y=(Min=0.100000,Max=1.000000),Z=(Min=0.100000,Max=1.000000))
         UseSizeScale=True
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=15.000000)
         StartSizeRange=(X=(Min=1.000000,Max=1.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.blob32'
         LifetimeRange=(Min=1.000000,Max=1.000000)
         StartVelocityRadialRange=(Min=-10.000000,Max=10.000000)
         Name="SpriteEmitter50"
     End Object
     Emitters(0)=SpriteEmitter'HGame.BundBall.SpriteEmitter50'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter51
         Acceleration=(Z=15.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.400000,Color=(B=169,G=52,R=46))
         ColorScale(2)=(RelativeTime=1.000000)
         StartLocationOffset=(Z=5.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=5.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=-1.000000)
         StartSizeRange=(X=(Min=3.000000,Max=3.000000))
         UniformSize=True
         ParticlesPerSecond=5.000000
         DrawStyle=PTDS_Brighten
         Texture=Texture'HP_FX.Particles.FF_SmallPuff'
         LifetimeRange=(Min=1.000000,Max=2.000000)
         Name="SpriteEmitter51"
     End Object
     Emitters(1)=SpriteEmitter'HGame.BundBall.SpriteEmitter51'
     AutoDestroy=True
     AutoReset=False
     LightBrightness=0.000000
     bDynamicLight=False
}
