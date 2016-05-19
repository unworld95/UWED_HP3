Class firecrab extends Creatures;

const BOOL_DEBUG_AI= false;
var int flipSet;
var() array<name> FlipAnims;
var() array<name> OnBackAnims;
var() array<name> RecoverAnims;
var() array<name> HitAnims;
var() array<name> HitAnimsOnBack;
var() array<name> LandAnimsOnBack;
var() name RoarAnim;
var() name AttackAnim;
var() name PreAttackAnim;
var() float fFlipAnimRate;
var() float fOnBackAnimRate;
var() float fRecoverAnimRate;
var() float fRoarAnimRate;
var() float fAttackAnimRate;
var() float fPreAttackAnimRate;
var(sounds) array<Sound> RoarSounds;
var(sounds) array<Sound> AttackSounds;
var(sounds) array<Sound> PreAttackSounds;
var(sounds) array<SoundGroup> LandedSounds;
var(sounds) Sound WalkingSound;
var() bool bCanStrafeToAttack;
var() bool bCanStrafeToAvoid;
var float fTimeOnBack;
var float strafeSpeed;
var bool bFalling;
var Vector vPush;
var bool bFallDistanceCheck;
var float fHighestZ;
var() Class<baseSpell> spellClass;
var() float fAccuracy;
var() bool bPlayRoar;
var() bool bPlayPreAttack;
var() float SpellDamage;
var() int iNumShotsBetweenPreAttack;
var() float fIncreaseHitTimeDistance;
var() float fHitTimeIncrement;
var() Rotator rAttackRotRate;
var float OldFlipendoXY;
var float OldFlipendoZ;
var() float fFlipPushForceXY;
var() float fFlipPushForceZ;
var() float fSlideFactor;
var() float fWallBounceFactor;
var() int numHitWallsAllowed;
var int numHitWalls;
var Rotator OldRotation;
var Rotator rAttackRot;
var Vector vTargetDir;
var Vector vTemp;
var Actor Enemy;
var FireCrabSpell smallSpell;
var float ftemp;
var int AnimationChannel;

defaultproperties
{
     FlipAnims(0)="flip2back_front"
     FlipAnims(1)="flip2back_back"
     OnBackAnims(0)="onBack"
     OnBackAnims(1)="onBack_back"
     RecoverAnims(0)="recover"
     RecoverAnims(1)="recover_back"
     HitAnims(0)="knockback"
     HitAnims(1)="knockback"
     HitAnimsOnBack(0)="onBackZap_front"
     HitAnimsOnBack(1)="OnBackZap_back"
     LandAnimsOnBack(0)="flip2backBOUNCE_front"
     LandAnimsOnBack(1)="flip2backBOUNCE_back"
     RoarAnim="roar"
     AttackAnim="Attack"
     PreAttackAnim="PreAttack"
     fFlipAnimRate=0.750000
     fOnBackAnimRate=0.750000
     fRecoverAnimRate=0.750000
     fRoarAnimRate=1.000000
     fAttackAnimRate=1.000000
     fPreAttackAnimRate=1.500000
     RoarSounds(0)=Sound'SoundEffects.Creatures.firecrab_roar'
     RoarSounds(1)=Sound'SoundEffects.Creatures.firecrab_roar_A'
     RoarSounds(2)=Sound'SoundEffects.Creatures.firecrab_roar_B'
     RoarSounds(3)=Sound'SoundEffects.Creatures.firecrab_roar_C'
     PreAttackSounds(0)=Sound'SoundEffects.Creatures.firecrab_preattack'
     bCanStrafeToAttack=True
     bCanStrafeToAvoid=True
     fTimeOnBack=3.000000
     strafeSpeed=150.000000
     bFallDistanceCheck=True
     spellClass=Class'HGame.FireCrabSpell'
     fAccuracy=0.500000
     bPlayRoar=True
     bPlayPreAttack=True
     SpellDamage=5.000000
     iNumShotsBetweenPreAttack=2
     fIncreaseHitTimeDistance=200.000000
     fHitTimeIncrement=0.500000
     rAttackRotRate=(Pitch=4096,Yaw=25000,Roll=3073)
     fFlipPushForceXY=200.000000
     fFlipPushForceZ=125.000000
     fSlideFactor=0.800000
     fWallBounceFactor=1.000000
     numHitWallsAllowed=2
     TimeBetweenAttacks=3.000000
     iAttackVolleyMax=3
     TimeBetweenShots=0.200000
     fAttackRange=400.000000
     iNumHitsToBeat=1
     RandColorRange=(Min=0.700000,Max=1.300000)
     RandSizeRange=(Min=0.900000,Max=1.100000)
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound8
         Name="AnimNotify_KWSound8"
     End Object
     AnimNotifys(0)=AnimNotify_KWSound'HGame.firecrab.AnimNotify_KWSound8'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound81
         Name="AnimNotify_KWSound81"
     End Object
     AnimNotifys(1)=AnimNotify_KWSound'HGame.firecrab.AnimNotify_KWSound81'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound9
         Name="AnimNotify_KWSound9"
     End Object
     AnimNotifys(2)=AnimNotify_KWSound'HGame.firecrab.AnimNotify_KWSound9'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound10
         Name="AnimNotify_KWSound10"
     End Object
     AnimNotifys(3)=AnimNotify_KWSound'HGame.firecrab.AnimNotify_KWSound10'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound11
         Name="AnimNotify_KWSound11"
     End Object
     AnimNotifys(4)=AnimNotify_KWSound'HGame.firecrab.AnimNotify_KWSound11'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound12
         Name="AnimNotify_KWSound12"
     End Object
     AnimNotifys(5)=AnimNotify_KWSound'HGame.firecrab.AnimNotify_KWSound12'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound13
         Name="AnimNotify_KWSound13"
     End Object
     AnimNotifys(6)=AnimNotify_KWSound'HGame.firecrab.AnimNotify_KWSound13'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound14
         Name="AnimNotify_KWSound14"
     End Object
     AnimNotifys(7)=AnimNotify_KWSound'HGame.firecrab.AnimNotify_KWSound14'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound15
         Name="AnimNotify_KWSound15"
     End Object
     AnimNotifys(8)=AnimNotify_KWSound'HGame.firecrab.AnimNotify_KWSound15'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound16
         Name="AnimNotify_KWSound16"
     End Object
     AnimNotifys(9)=AnimNotify_KWSound'HGame.firecrab.AnimNotify_KWSound16'
     vulnerableToClass=Class'HGame.RictusempraSpell_Combat'
     SpellHitSounds(0)=(Sound=Sound'SoundEffects.common.explosion01',Volume=1.000000,Radius=400.000000,PitchRange=(Min=0.800000,Max=1.000000))
     SpellHitSounds(1)=(Sound=Sound'SoundEffects.common.explosion02',Volume=1.000000,Radius=400.000000,PitchRange=(Min=0.800000,Max=1.000000))
     bStopSpellSound=True
     vSpellOffset=(X=-26.000000,Z=8.000000)
     GroundRunSpeed=75.000000
     fIdleAnimTweenTime=1.000000
     FootstepsStone(0)=Sound'SoundEffects.Creatures.firecrab_ss_fcb_step_01E'
     FootstepsStone(1)=Sound'SoundEffects.Creatures.firecrab_ss_fcb_step_02E'
     FootstepsStone(2)=Sound'SoundEffects.Creatures.firecrab_ss_fcb_step_03E'
     FootstepsNone(0)=Sound'SoundEffects.Creatures.firecrab_ss_fcb_step_01E'
     FootstepsNone(1)=Sound'SoundEffects.Creatures.firecrab_ss_fcb_step_02E'
     FootstepsNone(2)=Sound'SoundEffects.Creatures.firecrab_ss_fcb_step_03E'
     FootstepVolume=0.900000
     FootstepRadius=40.000000
     FootFramesWalk(0)=1
     FootFramesWalk(1)=11
     bCanJump=False
     bAvoidLedges=True
     bStopAtLedges=True
     bDirectHitWall=True
     SightRadius=600.000000
     PeripheralVision=1.000000
     GroundSpeed=60.000000
     AirSpeed=60.000000
     AccelRate=4000.000000
     BaseEyeHeight=20.000000
     EyeHeight=20.000000
     ControllerClass=Class'HGame.FireCrabController'
     BaseMovementRate=50.000000
     MovementAnims(0)="Walk"
     MovementAnims(1)="WalkBack"
     MovementAnims(2)="StrafeLeft"
     MovementAnims(3)="StrafeRight"
     TurnLeftAnim="StrafeLeft"
     TurnRightAnim="StrafeRight"
     Mesh=SkeletalMesh'HPCharacters.firecrab'
     DrawScale=1.250000
     AmbientGlow=110
     CollisionRadius=35.000000
     CollisionHeight=25.000000
     Mass=130.000000
     RotationRate=(Yaw=15000)
}
