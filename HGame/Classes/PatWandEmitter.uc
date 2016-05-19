Class PatWandEmitter extends WandEmitter;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitterLumos
         FadeOutStartTime=0.100000
         FadeOut=True
         FadeInEndTime=0.100000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=1
         StartSizeRange=(X=(Min=8.000000,Max=8.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.flare4'
         LifetimeRange=(Min=0.200000,Max=0.200000)
         Name="SpriteEmitterLumos"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PatWandEmitter.SpriteEmitterLumos'
}
