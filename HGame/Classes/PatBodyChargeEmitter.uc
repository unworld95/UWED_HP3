Class PatBodyChargeEmitter extends AllSpells;

var Vector Point_1;
var Vector Point_2;
var config float fRingRadius;
var Vector X;
var Vector Y;
var Vector Z;
var KWLookTarget carrot;
var float lastAlpha;
var int radialAngle;
var float fTimeToChangeRot;
var float fTimeTillNow;
var Rotator originalRot;

defaultproperties
{
     fRingRadius=5.000000
     fTimeToChangeRot=0.400000
     Begin Object Class=SpriteEmitter Name=SpriteEmitter26
         Acceleration=(X=-30.000000)
         FadeOutStartTime=0.500000
         FadeInEndTime=0.200000
         FadeIn=True
         MaxParticles=50
         StartLocationShape=PTLS_Polar
         StartLocationPolarRange=(X=(Max=10.000000),Y=(Max=65536.000000),Z=(Min=5.000000,Max=6.000000))
         UseRotationFrom=PTRS_Normal
         SpinCCWorCW=(X=5.000000)
         SpinsPerSecondRange=(X=(Min=1.500000,Max=2.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(Y=1.000000)
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=3.000000,Max=3.000000),Y=(Min=1.000000,Max=3.000000),Z=(Min=1.000000,Max=3.000000))
         UniformSize=True
         InitialParticlesPerSecond=50.000000
         Texture=Texture'HP_FX.Particles.flare4'
         LifetimeRange=(Min=0.500000,Max=1.000000)
         StartVelocityRange=(X=(Min=-1.000000,Max=1.000000),Y=(Min=-1.000000),Z=(Min=-1.000000,Max=1.000000))
         Name="SpriteEmitter26"
     End Object
     Emitters(0)=SpriteEmitter'HGame.PatBodyChargeEmitter.SpriteEmitter26'
     Begin Object Class=SpriteEmitter Name=SpriteEmitter27
         FadeOutStartTime=0.050000
         FadeInEndTime=0.050000
         FadeIn=True
         CoordinateSystem=PTCS_Relative
         MaxParticles=100
         StartLocationShape=PTLS_Polar
         StartLocationPolarRange=(X=(Max=10.000000),Y=(Max=65536.000000),Z=(Min=6.000000,Max=6.000000))
         UseRevolution=True
         RevolutionsPerSecondRange=(X=(Min=0.250000,Max=1.000000))
         UseRotationFrom=PTRS_Normal
         SpinCCWorCW=(X=5.000000)
         SpinsPerSecondRange=(X=(Min=1.500000,Max=2.000000))
         StartSpinRange=(X=(Min=-1.000000,Max=1.000000))
         RotationNormal=(Y=1.000000)
         SizeScale(0)=(RelativeTime=0.500000,RelativeSize=0.100000)
         SizeScale(1)=(RelativeTime=0.900000,RelativeSize=2.000000)
         StartSizeRange=(X=(Min=2.000000,Max=2.000000),Y=(Min=1.000000,Max=1.000000),Z=(Min=1.000000,Max=2.000000))
         UniformSize=True
         Texture=Texture'HP_FX.Particles.flare4'
         LifetimeRange=(Min=0.500000,Max=0.500000)
         StartVelocityRange=(X=(Min=-1.000000,Max=1.000000),Y=(Min=-1.000000,Max=1.000000),Z=(Min=-1.000000,Max=1.000000))
         Name="SpriteEmitter27"
     End Object
     Emitters(1)=SpriteEmitter'HGame.PatBodyChargeEmitter.SpriteEmitter27'
     LightSaturation=255
     bTrailerSameRotation=True
}
