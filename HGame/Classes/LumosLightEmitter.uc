Class LumosLightEmitter extends AllSpells;

var RangeVector DefaultStartSizeRange;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitterLumos
         MaxParticles=1
         StartSizeRange=(X=(Min=32.000000,Max=32.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.flare4'
         LifetimeRange=(Min=0.001500,Max=0.001500)
         Name="SpriteEmitterLumos"
     End Object
     Emitters(0)=SpriteEmitter'HGame.LumosLightEmitter.SpriteEmitterLumos'
     bLightChanged=True
     Tag="LumosLightEmitter"
     bSelected=True
}
