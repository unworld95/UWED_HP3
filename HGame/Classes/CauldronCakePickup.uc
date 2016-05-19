Class CauldronCakePickup extends Pickups;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter15
         Acceleration=(X=6.000000,Y=6.000000,Z=36.000000)
         UseMaxCollisions=True
         MaxCollisions=(Min=1.000000,Max=3.000000)
         ColorMultiplierRange=(X=(Min=255.000000,Max=255.000000),Y=(Min=100.000000,Max=200.000000))
         FadeOutStartTime=0.495000
         FadeOut=True
         FadeInEndTime=0.090000
         FadeIn=True
         MaxParticles=50
         StartLocationRange=(X=(Min=-1.000000,Max=1.000000),Y=(Min=-1.000000,Max=1.000000),Z=(Min=-1.000000,Max=1.000000))
         RevolutionsPerSecondRange=(Z=(Min=0.250000,Max=1.000000))
         RevolutionScaleRepeats=2.000000
         SpinCCWorCW=(X=0.540000)
         SpinsPerSecondRange=(X=(Min=0.050000,Max=0.100000),Y=(Min=0.050000,Max=0.100000),Z=(Min=0.050000,Max=0.100000))
         RotationNormal=(X=100.000000,Y=100.000000,Z=110.000000)
         UseSizeScale=True
         SizeScale(0)=(RelativeTime=0.870000)
         StartSizeRange=(X=(Min=2.000000,Max=10.000000),Y=(Min=2.000000,Max=6.000000),Z=(Min=2.000000,Max=6.000000))
         UniformSize=True
         InitialParticlesPerSecond=500.000000
         Texture=Texture'HP_FX.Particles.flare4'
         LifetimeRange=(Min=0.750000,Max=2.500000)
         StartVelocityRange=(X=(Min=-50.000000,Max=50.000000),Y=(Min=-50.000000,Max=50.000000),Z=(Min=1.000000,Max=1.000000))
         Name="SpriteEmitter15"
     End Object
     Emitters(0)=SpriteEmitter'HGame.CauldronCakePickup.SpriteEmitter15'
}
