Class DementorBoss extends Dementor;

var DementorManager dm;
var float InnerMovementRadius;
var float OuterMovementRadius;
var() float IdleAnimFrameRate;
var Vector vMoveDest;
var() Class<Emitter> EmitterTypeToAttachToBones;
var() Class<Emitter> EmitterTypeForFrozenEffect;
var Emitter EmitterFrozenEffect;
var() Class<Emitter> EmitterToAttachToDementor;
var Emitter aEmitterToAttachToDementor;
var float ChanceOfShootAfterMove;
var int SpellPowerIndex;
var float FreezeTimeShort;
var() float FreezeTimeLong;
var float FreezeTime;
var bool bDidFirstGroanAnim;
var bool bEveryOneCanDie1;
var name EventToSendWhenDefeated;
var float TimeIWasFrozen;
var() int TouchDamage;
var float InitialMoveAccelRate;
var float InitialMoveGroundRunSpeed;
var float InitialMoveRotationRateYaw;
var float InitialMoveDoneRadius;
var float AccelRateSave;
var float GroundRunSpeedSave;
var float RotationRateYawSave;
var() float DementorKnockBackDistance;
var() float DementorKnockBackSpeed;
var float DementorKnockBackSpeedUse;
var float LastKnockBackPercent;
var float DementorKnockBackAccel;
var float DementorKnockBackStartTime;
var Vector DementorKnockBackDir;
var() int AngularMovementSpeedMin;
var() int AngularMovementSpeedMax;
var int AngularMovementSpeed;
var int AngularMovementSpeedDest;
var() int AngularMovementAccel;
var() float TimeBetweenSpeedChanges;
var() float DirectionChangePercentChance;
var() float RadialMovementSpeed;
var() float ArmsUpAnimFarDistance;
var() float ArmsUpAnimCloseDistance;
var() float HitAnim_StartRate;
var() float HitAnim_TargetRate;
var float HitAnim_CurrentRate;
var() float HitAnim_ChangeTime;
var Actor AvoidActor;
var float AvoidActorTimeStart;
var float AvoidActorTime;
var bool bHoldingArmsUp;
var int QuickDirChangeCounter;

defaultproperties
{
     InnerMovementRadius=150.000000
     OuterMovementRadius=400.000000
     IdleAnimFrameRate=0.600000
     EmitterTypeForFrozenEffect=Class'HGame.DementorEPCloud'
     EmitterToAttachToDementor=Class'HGame.DementorGroundHalo'
     ChanceOfShootAfterMove=0.450000
     FreezeTimeShort=0.500000
     FreezeTimeLong=4.000000
     TouchDamage=51
     DementorKnockBackDistance=200.000000
     DementorKnockBackSpeed=30.000000
     AngularMovementSpeedMin=2000
     AngularMovementSpeedMax=3000
     AngularMovementAccel=1450
     TimeBetweenSpeedChanges=2.000000
     DirectionChangePercentChance=75.000000
     RadialMovementSpeed=25.000000
     ArmsUpAnimFarDistance=200.000000
     ArmsUpAnimCloseDistance=150.000000
     HitAnim_StartRate=0.800000
     HitAnim_TargetRate=0.100000
     HitAnim_ChangeTime=3.000000
     AvoidActorTime=1.000000
     QuickDirChangeCounter=4
     reachAnims(0)="ReachLeft"
     reachAnims(1)="ReachRight"
     vulnerableToClass=Class'HGame.PatronumDementorSpell'
     Label="DementorBoss"
     GroundRunSpeed=60.000000
     AccelRate=15.000000
     ControllerClass=Class'HGame.DementorController'
     Physics=PHYS_Walking
     CollisionRadius=45.000000
     CollisionHeight=110.000000
     RotationRate=(Yaw=6000)
}
