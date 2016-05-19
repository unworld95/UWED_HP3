Class SpongifyPad extends Spongify;

#exec Texture Import File=Textures\SpongifyTexture.bmp Name=SpongifyTexture Mips=Off Flags=2 MASKED=1

var Actor Target;
var float fScale;
var() bool bEnableOnEvent;
var float fTimeLeft;
var() float fTimeEnabled;
var() float fRaiseAmount;
var() float fRaiseSpeed;
var() float fRotationSpeed;
var() float fTimeToHitTarget;
var() Vector PadDir;
var() float PadSpeed;
var() float fAirControlModifier;
var Emitter fxSparkles;
var() Class<Emitter> fxSparklesClass;
var SpongifySheet fxSheet;
var bool bBouncing;
var bool bUsed;
var() bool bForceViewToTarget;
var() float fSpeedToForceView;
var() float fSpeedToKeepView;
var() Rotator RotationLockFrustrum;
var SpongifyCamLockDelegate CamLockDel;
var() AnimGroup BounceAnim;
var() array<SoundGroup> BounceSounds;
var() AnimGroup ActivateAnim;
var() array<SoundGroup> ActivateSounds;
var() AnimGroup DeActivateAnim;
var() array<SoundGroup> DeActivateSounds;
var(Persistence) bool bPersistent;
var name SavedState;
var() bool bRemind;

defaultproperties
{
     fTimeEnabled=10.000000
     fRaiseAmount=10.000000
     fRaiseSpeed=20.000000
     fRotationSpeed=2048.000000
     fTimeToHitTarget=2.000000
     PadDir=(Z=1.000000)
     PadSpeed=500.000000
     fxSparklesClass=Class'HGame.SpongifyEmitter'
     fSpeedToForceView=5.000000
     fSpeedToKeepView=10.000000
     RotationLockFrustrum=(Pitch=2000,Yaw=2000)
     BounceSounds(0)=(Sound=Sound'SoundEffects.Magic.spell_spongify_jump',Volume=0.700000)
     vulnerableToClass=Class'HGame.SpongifySpell'
     DrawType=DT_Sprite
     bHidden=True
     Texture=Texture'HGame.SpongifyTexture'
     CollisionRadius=48.000000
     CollisionHeight=4.000000
     bCollideWorld=False
     bBlockActors=False
     bBlockPlayers=False
}
