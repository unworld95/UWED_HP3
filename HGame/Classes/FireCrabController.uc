Class FireCrabController extends CreatureController;

const BOOL_DEBUG_AI= false;
var firecrab firecrab;
var Actor tempActor;
var Vector vHome;
var Vector vLastHitWallNormal;
var Vector vPopUpDirection;
var bool bHitWallSincePopup;
var int AnimationChannel;
var float fTimeOnBackSoFar;
var Vector vTemp;
var Vector vTemp2;
var float ftemp;
var Vector vMoveDir;
var Vector vTargetDir;
var Vector vRotDir;
var Vector vPush;
var Vector vLastEnemyLocation;
var Rotator vMoveDirRot;
var Rotator rotationChange;
var float normalSpeed;
var Vector HitLocation;
var Vector HitNormal;
var Vector vEnd;
var Vector VStart;
var bool StrafeLeft;
var bool bFalling;
var bool bSliding;
var bool bAlreadyBounced;
var baseSpell smallSpell;
var int iNumShots;
var float TimeUntilNextAttack;
var float TimeUntilNextFire;
var int AttackLOSAngle;
var Rotator rAttackRot;

defaultproperties
{
     iNumShots=3
     AttackLOSAngle=20
}
