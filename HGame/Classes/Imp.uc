Class Imp extends Creatures;

struct ImpAnimStruct
{
  var name sequence;
  var float rate;
  var float tweenTime;
  var bool Loop;
};

enum eImpAnim {
  IMPANIM_Idle,
  IMPANIM_PickNoseAndFlick,
  IMPANIM_ScratchButt,
  IMPANIM_Taunt,
  IMPANIM_Point,
  IMPANIM_ThrowFirecracker,
  IMPANIM_Dodge,
  IMPANIM_Run,
  IMPANIM_ChargeForward,
  IMPANIM_DazedWalk,
  IMPANIM_DazedWalkRecover,
  IMPANIM_Knockdown,
  IMPANIM_Getup
};

var() bool bPatrol;
var() float fWakeUpRange;
var() float fEvadeRange;
var() float fThrowMin;
var() float fThrowMax;
var() float fThrowRate;
var() Class<baseSpell> spellClass;
var() float fCrackerDamage;
var() int iCrackerRange;
var() float fCrackerRangeTweak;
var() float fCrackerInaccuracy;
var() float fCrackerFuseDelay;
var() float fCrackerDamageRadius;
var ImpAnimStruct ImpAnim[15];
var int CurAnim;
var ImpCombatManager ccm;
var() array<SoundGroup> TauntSounds;
var() array<SoundGroup> OuchSounds;
var() array<SoundGroup> DieSounds;
var() array<SoundGroup> DieSoundsExtra;
var bool bIsDead;
var() name TagOfActorToThrowNextCrackerAt;
var WizardCracker wc;
var WizardCracker WCThrown;

defaultproperties
{
     fWakeUpRange=512.000000
     fEvadeRange=150.000000
     fThrowMin=200.000000
     fThrowMax=300.000000
     fThrowRate=6.000000
     spellClass=Class'HGame.BundimunSpell'
     fCrackerDamage=5.000000
     iCrackerRange=500
     fCrackerRangeTweak=0.200000
     fCrackerInaccuracy=70.000000
     fCrackerFuseDelay=2.000000
     fCrackerDamageRadius=100.000000
     TauntSounds(0)=(Sound=Sound'SoundEffects.Creatures.imp_die_02')
     TauntSounds(1)=(Sound=Sound'SoundEffects.Creatures.imp_die_03')
     TauntSounds(2)=(Sound=Sound'SoundEffects.Creatures.imp_ouch_01')
     TauntSounds(3)=(Sound=Sound'SoundEffects.Creatures.imp_ouch_03')
     TauntSounds(4)=(Sound=Sound'SoundEffects.Creatures.imp_ouch_04')
     TauntSounds(5)=(Sound=Sound'SoundEffects.Creatures.imp_ouch_05')
     OuchSounds(0)=(Sound=Sound'SoundEffects.Creatures.imp_attack_01')
     OuchSounds(1)=(Sound=Sound'SoundEffects.Creatures.imp_attack_02')
     OuchSounds(2)=(Sound=Sound'SoundEffects.Creatures.imp_attack_03')
     OuchSounds(3)=(Sound=Sound'SoundEffects.Creatures.imp_attack_04')
     OuchSounds(4)=(Sound=Sound'SoundEffects.Creatures.imp_attack_05')
     DieSounds(0)=(Sound=Sound'SoundEffects.Creatures.imp_die_01')
     DieSounds(1)=(Sound=Sound'SoundEffects.Creatures.imp_die_04')
     DieSounds(2)=(Sound=Sound'SoundEffects.Creatures.imp_die_05')
     DieSounds(3)=(Sound=Sound'SoundEffects.Creatures.imp_ouch_02')
     DieSoundsExtra(0)=(Sound=Sound'SoundEffects.Creatures.imp_bite_01',Volume=0.700000)
     DieSoundsExtra(1)=(Sound=Sound'SoundEffects.Creatures.imp_bite_02',Volume=0.700000)
     FootstepsWood(0)=Sound'SoundEffects.Creatures.imp_footstep_wood01'
     FootstepsWood(1)=Sound'SoundEffects.Creatures.imp_footstep_wood02'
     FootstepsWood(2)=Sound'SoundEffects.Creatures.imp_footstep_wood03'
     FootstepsGrass(0)=Sound'SoundEffects.Creatures.imp_footstep_grass01'
     FootstepsGrass(1)=Sound'SoundEffects.Creatures.imp_footstep_grass02'
     FootstepsGrass(2)=Sound'SoundEffects.Creatures.imp_footstep_grass03'
     FootstepsNone(0)=Sound'SoundEffects.Creatures.imp_footstep_wood01'
     FootstepsNone(1)=Sound'SoundEffects.Creatures.imp_footstep_wood02'
     FootstepsNone(2)=Sound'SoundEffects.Creatures.imp_footstep_wood03'
     FootFramesRun(0)=4
     FootFramesRun(1)=12
     ControllerClass=Class'HGame.ImpController'
     BaseMovementRate=200.000000
     MovementAnims(1)="run"
     MovementAnims(2)="run"
     MovementAnims(3)="run"
     TurnLeftAnim="standTurn135Left"
     TurnRightAnim="standTurn135Right"
     Mesh=SkeletalMesh'HPCharacters.Imp'
     CollisionRadius=30.000000
     CollisionHeight=40.000000
     RotationRate=(Yaw=24000)
}
