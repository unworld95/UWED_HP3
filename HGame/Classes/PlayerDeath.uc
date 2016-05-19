Class PlayerDeath extends GameFX;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter31
         FadeOut=True
         MaxParticles=200
         UseRevolution=True
         RevolutionCenterOffsetRange=(Y=(Min=-15.000000,Max=15.000000))
         RevolutionsPerSecondRange=(Z=(Min=1.000000,Max=2.000000))
         StartSizeRange=(X=(Min=5.000000,Max=2.000000))
         UniformSize=True
         Texture=Texture'HP3_FX.Particles.Sparkle_8'
         LifetimeRange=(Min=1.000000,Max=1.500000)
         StartVelocityRange=(Z=(Max=100.000000))
         Name="SpriteEmitter31"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PlayerDeath.SpriteEmitter31'
}
