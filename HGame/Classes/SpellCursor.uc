Class SpellCursor extends HCursor;

const MAX_GESTURE_SIZE= 100.0f;
const MIN_GESTURE_SIZE= 50.0f;
var SpellCursorEmitter CursorParticles;
var Class<SpellCursorEmitter> particleType;
var Class LastLockedOnClass;
var array<SpellGesture> SpellGestures;
var Vector vGestureOffset;
var Vector vDesiredGestLoc;
var float fFinalGestureDistance;
var(Gesture) float fGestureSpeedFactor;
var Projector ProjGesture;
var float fProjScale;
var int iScaleDirection;
var Sound LockedOnSound;
var Sound LockedOnSoundLoop;
var Vector vTargetOffset;
var float fMinTimeBetweenCasts;
var float chargeFactor;

defaultproperties
{
     particleType=Class'HGame.SpellCursorEmitter'
     fGestureSpeedFactor=3.000000
     LockedOnSound=Sound'SoundEffects.Magic.spell_target_nl3'
     LockedOnSoundLoop=Sound'SoundEffects.Magic.spell_targetloop'
     fMinTimeBetweenCasts=5.000000
     bActivatedByDefault=False
     bHidden=True
     SoundRadius=300.000000
     SoundVolume=80
     SoundOcclusion=OCCLUSION_None
     TransientSoundVolume=0.250000
     CollisionRadius=15.000000
     CollisionHeight=15.000000
     RotationRate=(Pitch=5000)
}
