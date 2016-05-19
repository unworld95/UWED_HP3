Class Poxie extends Creatures;

var bool bActive;
var Vector vStartLoc;
var Vector vLastLoc;
var Vector vNewLoc;
var Actor aTarget;
var() float fRockThrowChance;
var() float fRockThrowAnimRate;
var() name FlyOutOfObjectOnTriggerTag;
var() float FlyOutOfObjectTimeMin;
var() float FlyOutOfObjectTimeMax;
var() Range PauseTime;
var Class<Projectile> VulnerableToClassSave;
var() bool bDoInitialDelayBeforeShowing;
var() float DelayBeforeShowingLow;
var() float DelayBeforeShowingHigh;
var() float ThrowVelScalar;
var() bool bCanThrowRocks;
var() float ThrowAnimFrame;
var() name ThrowProjAnimName;
var() name MoveStartAnimName;
var() name MoveLoopAnimName;
var() Class<Emitter> RocksTrailEmitterClass;
var() Class<Emitter> RocksBurstEmitterClass;
var() Class<Emitter> PoxieTrailEmitterClass;
var() Class<Emitter> PoxieBurstEmitterClass;
var() Range MovementDistRange;
var Emitter PoxieTrailEmitter;
var PoxieManager manager;
var() bool bWaitToAttack;
var() Class<Actor> clsGoodieTypeToSpawn;
var() name TagOfMovePoints;
var array<Actor> MovePointsArray;
var() float fMoveSpeedMin;
var() float fMoveSpeedMax;
var() bool bUseEaseBetweenForMovement;
var() bool bTurnBeforeMoving;
var float MoveCurveFactor;
var() int maxPitch;
var() float ChanceOfPauseTalk;

defaultproperties
{
     fRockThrowChance=0.600000
     fRockThrowAnimRate=0.750000
     FlyOutOfObjectTimeMin=1.500000
     FlyOutOfObjectTimeMax=2.300000
     PauseTime=(Min=0.500000,Max=1.000000)
     bDoInitialDelayBeforeShowing=True
     DelayBeforeShowingLow=0.100000
     DelayBeforeShowingHigh=2.000000
     ThrowVelScalar=0.333000
     bCanThrowRocks=True
     ThrowAnimFrame=0.433000
     ThrowProjAnimName="Hover_ThrowStone"
     MoveStartAnimName="Takeoff"
     MoveLoopAnimName="Hover_forward"
     RocksTrailEmitterClass=Class'HGame.PixieBall'
     RocksBurstEmitterClass=Class'HGame.PixieBallExplode'
     PoxieTrailEmitterClass=Class'HGame.PixieTrail'
     PoxieBurstEmitterClass=Class'HGame.Pixieburst'
     MovementDistRange=(Min=50.000000,Max=80.000000)
     clsGoodieTypeToSpawn=Class'HGame.Jellybean'
     fMoveSpeedMin=60.000000
     fMoveSpeedMax=80.000000
     MoveCurveFactor=1.500000
     maxPitch=4500
     ChanceOfPauseTalk=100.000000
     vulnerableToClass=Class'HGame.RictusempraSpell_Combat'
     DefaultManagerClass=Class'HGame.PoxieManager'
     IdleAnimName="Hover_idle"
     ControllerClass=Class'KWGame.KWAIController'
     bPhysicsAnimUpdate=False
     Physics=PHYS_Rotating
     bActorShadows=False
     Mesh=SkeletalMesh'HPCharacters.Pixie'
     DrawScale=0.700000
     AmbientGlow=175
     CollisionRadius=20.000000
     CollisionHeight=20.000000
}
