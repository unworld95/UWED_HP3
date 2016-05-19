Class BundimunController extends CreatureController;

const DEBUG_AI= false;
var Bundimun Bundimun;
var int AnimationChannel;
var Vector vHome;
var Vector vEnemyDir;
var Vector vHomeDir;
var int YawAngle;
var Vector vTemp;
var Vector vTemp2;
var float ftemp;
var Rotator rAttackRot;
var float TimeUntilNextFire;
var Vector X;
var Vector Y;
var Vector Z;
var float fGooRangeVariation;
var BundRise RiseFX;
var BundDizzy DizzyFX;
var BundDie DieFX;

defaultproperties
{
}
