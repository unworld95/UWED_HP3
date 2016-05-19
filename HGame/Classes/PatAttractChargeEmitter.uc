Class PatAttractChargeEmitter extends AllSpells;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter1
         FadeOutStartTime=0.980000
         FadeOut=True
         FadeInEndTime=0.400000
         FadeIn=True
         StartLocationRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=-50.000000,Max=50.000000))
         StartSizeRange=(X=(Min=4.000000,Max=4.000000),Y=(Min=4.000000,Max=4.000000),Z=(Min=4.000000,Max=4.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.flare4'
         LifetimeRange=(Min=1.500000,Max=1.500000)
         Name="SpriteEmitter1"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PatAttractChargeEmitter.SpriteEmitter1'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter2
         FadeOutStartTime=0.380000
         FadeOut=True
         FadeInEndTime=0.200000
         FadeIn=True
         StartLocationRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=-50.000000,Max=50.000000))
         StartSizeRange=(X=(Min=2.000000,Max=2.100000),Y=(Min=2.000000,Max=2.100000),Z=(Min=2.000000,Max=2.100000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.flare4'
         LifetimeRange=(Min=0.800000,Max=0.800000)
         Name="SpriteEmitter2"
     End Object
     Emitters(1)=SpriteEmitter'HGame.PatAttractChargeEmitter.SpriteEmitter2'
     LightSaturation=255
}
