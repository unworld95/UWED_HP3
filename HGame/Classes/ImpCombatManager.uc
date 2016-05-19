Class ImpCombatManager extends CompanionCombatManager;

var() int NumImpsToAttackPerWave;
var int NumImpsToAttackThisWave;
var array<Imp> ImpArray;
var() float fCrackerDamage;
var() float fCrackerFuseDelay;
var() float fCrackerInaccuracy;
var() int iCrackerRange;
var() float fCrackerRangeTweak;
var() float fCrackerDamageRadius;
var() float fEvadeRange;
var() float fThrowMin;
var() float fThrowMax;
var() float fThrowRate;

defaultproperties
{
     NumImpsToAttackPerWave=2
     bUseFightStanceAnimsForCombat=False
}
