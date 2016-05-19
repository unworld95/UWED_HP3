Class SpellGesture extends UWEmitter;

#exec Texture import File=Textures\Sparkle_7.bmp Name=Sparkle_7 GROUP=HP_FX.Particles

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=GestureSprite
         ColorScale(0)=(Color=(B=32,G=32,R=32))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=26,G=32,R=57))
         FadeOutStartTime=0.045000
         FadeInEndTime=0.010000
         CoordinateSystem=PTCS_Relative
         MaxParticles=1
         SpinParticles=True
         StartSpinRange=(X=(Min=0.500000,Max=0.500000))
         RotationNormal=(X=1.000000)
         SizeScale(0)=(RelativeSize=1.000000)
         SizeScale(1)=(RelativeTime=0.500000,RelativeSize=0.500000)
         SizeScale(2)=(RelativeTime=1.000000,RelativeSize=1.000000)
         StartSizeRange=(X=(Min=30.000000,Max=30.000000),Y=(Min=30.000000,Max=30.000000),Z=(Min=30.000000))
         UniformSize=True
         InitialParticlesPerSecond=100.000000
         LifetimeRange=(Min=0.100000,Max=0.100000)
         Name="GestureSprite"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SpellGesture.GestureSprite'
     Begin Object Class=SpriteEmitter Name=GestureSparkles
         Acceleration=(Z=30.000000)
         ColorScale(0)=(Color=(B=255,G=255,R=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=26,G=32,R=57))
         FadeOutStartTime=0.500000
         FadeOut=True
         FadeInEndTime=0.500000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=12
         StartLocationShape=PTLS_Sphere
         SpinParticles=True
         StartSpinRange=(X=(Min=0.500000,Max=0.500000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=0.010000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=0.050000)
         StartSizeRange=(X=(Min=200.000000,Max=200.000000),Y=(Min=200.000000,Max=200.000000),Z=(Min=200.000000))
         UniformSize=True
         InitialParticlesPerSecond=12.000000
         Texture=Texture'HGame.HP_FX.Particles.Sparkle_7'
         LifetimeRange=(Min=1.000000,Max=1.200000)
         StartVelocityRange=(X=(Min=-5.000000,Max=10.000000),Y=(Min=-20.000000,Max=20.000000),Z=(Min=-20.000000,Max=20.000000))
         GetVelocityDirectionFrom=PTVD_AddRadial
         Name="GestureSparkles"
     End Object
     Emitters(1)=SpriteEmitter'HGame.SpellGesture.GestureSparkles'
     AutoReset=True
     Physics=PHYS_Trailer
     bHidden=True
     bNoDelete=False
     RemoteRole=ROLE_DumbProxy
     CollisionRadius=2.000000
     CollisionHeight=2.000000
     Mass=4.000000
}
