Class DragonFlame extends SpellFlyEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter7
         Acceleration=(Z=30.000000)
         UseColorScale=True
         ColorScale(1)=(RelativeTime=0.400000,Color=(B=91,G=218,R=255))
         ColorScale(2)=(RelativeTime=0.800000,Color=(B=30,G=91,R=255))
         ColorScale(3)=(RelativeTime=1.000000)
         MaxParticles=100
         UseRotationFrom=PTRS_Actor
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=0.250000,Max=0.500000))
         RotationNormal=(X=1.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=0.250000)
         SizeScale(1)=(RelativeTime=0.200000,RelativeSize=0.500000)
         SizeScale(2)=(RelativeTime=0.600000,RelativeSize=1.000000)
         SizeScale(3)=(RelativeTime=1.000000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=5.000000,Max=5.000000))
         UniformSize=True
         Texture=Texture'EmitterTextures.MultiFrame.LargeFlamesBW'
         TextureUSubdivisions=4
         TextureVSubdivisions=4
         BlendBetweenSubdivisions=True
         LifetimeRange=(Min=0.500000,Max=1.500000)
         StartVelocityRange=(X=(Min=25.000000,Max=75.000000),Y=(Min=-10.000000,Max=10.000000),Z=(Min=-10.000000))
         Name="SpriteEmitter7"
     End Object
     Emitters(0)=SpriteEmitter'HGame.DragonFlame.SpriteEmitter7'
     bTrailerSameRotation=True
     RelativeRotation=(Roll=-16384)
     bDirectional=True
}
