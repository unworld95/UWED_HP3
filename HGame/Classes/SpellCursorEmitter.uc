Class SpellCursorEmitter extends UWEmitter;

#exec Texture import File=Textures\Sparkle_3.bmp Name=Sparkle_3 GROUP=HP_FX.Particles

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpellCursorEmitterNoHit
         Acceleration=(Z=-200.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=255,G=255,R=255))
         FadeOutStartTime=0.200000
         FadeOut=True
         MaxParticles=40
         SpinParticles=True
         SpinsPerSecondRange=(X=(Min=-1.000000,Max=1.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         UseSizeScale=True
         SizeScale(0)=(RelativeSize=0.010000)
         SizeScale(1)=(RelativeTime=1.000000,RelativeSize=0.050000)
         StartSizeRange=(X=(Min=200.000000,Max=200.000000),Y=(Min=200.000000,Max=200.000000),Z=(Min=200.000000))
         UniformSize=True
         InitialParticlesPerSecond=40.000000
         Texture=Texture'HGame.HP_FX.Particles.Sparkle_3'
         LifetimeRange=(Min=0.250000,Max=0.500000)
         StartVelocityRange=(X=(Min=-2.000000,Max=-2.000000),Y=(Min=-2.000000,Max=2.000000),Z=(Min=-2.000000,Max=2.000000))
         Name="SpellCursorEmitterNoHit"
     End Object
     Emitters(0)=SpriteEmitter'HGame.SpellCursorEmitter.SpellCursorEmitterNoHit'
     AutoReset=True
     Physics=PHYS_Trailer
     bNoDelete=False
     bTrailerSameRotation=True
     RemoteRole=ROLE_DumbProxy
     DrawScale=0.100000
     Mass=4.000000
}
