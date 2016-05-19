Class HippoRingEmitter extends GameFX;

var float ReTriggerDelay;
var bool bSetup;
var float defRadius;
var Vector vStartLoc;
var float fBobHeight;
var float fBobSpeed;
var float fTimeHit;

defaultproperties
{
     Begin Object Class=SpriteEmitter Name=SpriteEmitter2
         ProjectionNormal=(Z=0.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=255,G=255,R=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255))
         FadeOutStartTime=1.500000
         FadeOut=True
         FadeInEndTime=0.500000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=32
         StartLocationShape=PTLS_Polar
         StartLocationPolarRange=(X=(Max=10.000000),Y=(Max=65535.000000),Z=(Min=100.000000,Max=100.000000))
         RevolutionsPerSecondRange=(X=(Min=-0.330000,Max=0.330000))
         UseRotationFrom=PTRS_Normal
         SpinCCWorCW=(X=5.000000)
         SpinsPerSecondRange=(X=(Min=1.500000,Max=2.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(Y=1.000000)
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=18.000000,Max=28.000000),Y=(Min=16.000000,Max=24.000000),Z=(Min=16.000000,Max=24.000000))
         UniformSize=True
         DrawStyle=PTDS_AlphaModulate_MightNotFogCorrectly
         Texture=Texture'HP3_FX.Bats.BatFlap1_A00'
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-8.000000,Max=8.000000),Y=(Min=-8.000000,Max=8.000000),Z=(Min=-8.000000,Max=8.000000))
         Name="SpriteEmitter2"
     End Object
     Emitters(0)=SpriteEmitter'HGame.HippoRingEmitter.SpriteEmitter2'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter3
         ProjectionNormal=(Z=0.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=255,G=255,R=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255))
         FadeOutStartTime=1.500000
         FadeOut=True
         FadeInEndTime=0.500000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=32
         StartLocationShape=PTLS_Polar
         StartLocationPolarRange=(X=(Max=10.000000),Y=(Max=65535.000000),Z=(Min=100.000000,Max=100.000000))
         RevolutionsPerSecondRange=(X=(Min=-0.330000,Max=0.330000))
         UseRotationFrom=PTRS_Normal
         SpinCCWorCW=(X=5.000000)
         SpinsPerSecondRange=(X=(Min=1.500000,Max=2.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(Y=1.000000)
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=18.000000,Max=28.000000),Y=(Min=16.000000,Max=24.000000),Z=(Min=16.000000,Max=24.000000))
         UniformSize=True
         DrawStyle=PTDS_AlphaModulate_MightNotFogCorrectly
         Texture=Texture'HP3_FX.Bats.BatFlap2_A00'
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-8.000000,Max=8.000000),Y=(Min=-8.000000,Max=8.000000),Z=(Min=-8.000000,Max=8.000000))
         Name="SpriteEmitter3"
     End Object
     Emitters(1)=SpriteEmitter'HGame.HippoRingEmitter.SpriteEmitter3'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter4
         ProjectionNormal=(Z=0.000000)
         UseColorScale=True
         ColorScale(0)=(Color=(B=255,G=255,R=255))
         ColorScale(1)=(RelativeTime=1.000000,Color=(B=255,G=255,R=255))
         FadeOutStartTime=1.500000
         FadeOut=True
         FadeInEndTime=0.500000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=32
         StartLocationShape=PTLS_Polar
         StartLocationPolarRange=(X=(Max=10.000000),Y=(Max=65535.000000),Z=(Min=100.000000,Max=100.000000))
         RevolutionsPerSecondRange=(X=(Min=-0.330000,Max=0.330000))
         UseRotationFrom=PTRS_Normal
         SpinCCWorCW=(X=5.000000)
         SpinsPerSecondRange=(X=(Min=1.500000,Max=2.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(Y=1.000000)
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=18.000000,Max=28.000000),Y=(Min=16.000000,Max=24.000000),Z=(Min=16.000000,Max=24.000000))
         UniformSize=True
         DrawStyle=PTDS_AlphaModulate_MightNotFogCorrectly
         Texture=Texture'HP3_FX.Bats.BatFlap3_A00'
         LifetimeRange=(Min=2.000000,Max=2.000000)
         StartVelocityRange=(X=(Min=-8.000000,Max=8.000000),Y=(Min=-8.000000,Max=8.000000),Z=(Min=-8.000000,Max=8.000000))
         Name="SpriteEmitter4"
     End Object
     Emitters(2)=SpriteEmitter'HGame.HippoRingEmitter.SpriteEmitter4'
     CollisionRadius=5000.000000
     CollisionHeight=3000.000000
     bCollideActors=True
}
