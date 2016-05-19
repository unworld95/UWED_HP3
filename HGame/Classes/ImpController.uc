Class ImpController extends CreatureController;

const DEBUG_AI= false;
var Imp Imp;
var int ActionAnimationChannel;
var Vector vHome;
var Vector vDest;
var Vector vAccel;
var float vDist1;
var float vDist2;
var baseSpell smallSpell;
var WizardCracker wc;
var WizardCracker WCThrown;
var Vector vTemp;
var Vector vTemp2;
var float ftemp;
var Rotator rAttackRot;
var bool bTimerStarted;
var bool bHidden;
var float BumpDist;
var int BumpCount;
var bool bBumping;
var float fDistFromManager;
var float fWatchTauntAutoMoveTime;
var bool bDoPlayerRangeCheck;

defaultproperties
{
     BumpDist=64.000000
}
