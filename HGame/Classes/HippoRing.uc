Class HippoRing extends Keypoint;

var float radialAngle;
var float fRingRadius_Y;
var float fRingRadius_Z;
var float fRingLength;
var Vector X;
var Vector Y;
var Vector Z;
var() int iPointValue;
var() float boostAmount;
var() int NumTimesToFinish;
var() float fBobHeight;
var() float fBobSpeed;
var Vector vStartLoc;
var float fTimeHit;
var() Color ringColorStart;
var() Color ringColorEnd;
var HippoRingEmitter ringFX;
var() Class<HippoRingEmitter> ringFXClass;
var() Class<Emitter> HitFXClass;
var bool done;
var() name GameManagerTag;
var HippoFlyGame GameManager;
var() name PathManagerTags[6];
var name CurrentPathTag;
var(sounds) array<SoundGroup> hitSounds;
var int numTimesActivated;

defaultproperties
{
     iPointValue=100
     boostAmount=200.000000
     NumTimesToFinish=1
     fBobHeight=30.000000
     fBobSpeed=4.000000
     ringColorStart=(B=255,G=255,R=255)
     ringColorEnd=(B=255,G=255,R=255)
     ringFXClass=Class'HGame.HippoRingEmitter'
     HitFXClass=Class'HGame.HippoRingHit'
     hitSounds(0)=(Sound=Sound'SoundEffects.Magic.hipporing01',Volume=0.700000,Radius=200.000000,PitchRange=(Min=0.800000,Max=1.000000))
     hitSounds(1)=(Sound=Sound'SoundEffects.Magic.hipporing02',Volume=0.700000,Radius=200.000000,PitchRange=(Min=0.800000,Max=1.000000))
     hitSounds(2)=(Sound=Sound'SoundEffects.Magic.hipporing03',Volume=0.700000,Radius=200.000000,PitchRange=(Min=0.800000,Max=1.000000))
     bStatic=False
     bTrailerSameRotation=True
     CollisionRadius=16.000000
     CollisionHeight=128.000000
     bDirectional=True
}
