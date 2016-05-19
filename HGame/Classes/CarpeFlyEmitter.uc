Class CarpeFlyEmitter extends SpellFlyEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter10
         FadeOutStartTime=0.025000
         FadeOut=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=200
         StartLocationRange=(X=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         StartLocationShape=PTLS_All
         UseRotationFrom=PTRS_Normal
         SpinParticles=True
         SpinCCWorCW=(X=5.000000)
         SpinsPerSecondRange=(X=(Min=1.500000,Max=2.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(X=1.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.100000,RelativeSize=2.000000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=1.000000)
         StartSizeRange=(X=(Min=1.000000,Max=3.000000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         UniformSize=True
         InitialParticlesPerSecond=50.000000
         Texture=Texture'HP_FX.Particles.Dot_1'
         LifetimeRange=(Min=0.050000,Max=0.150000)
         StartVelocityRange=(X=(Min=-10.000000,Max=10.000000),Y=(Min=-10.000000,Max=10.000000),Z=(Min=-10.000000,Max=10.000000))
         Name="SpriteEmitter10"
     End Object
     Emitters(0)=SpriteEmitter'HGame.CarpeFlyEmitter.SpriteEmitter10'
     LightHue=200
     LightSaturation=70
     LightPeriod=16
     bTrailerSameRotation=True
}
