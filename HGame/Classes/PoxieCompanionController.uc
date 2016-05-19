Class PoxieCompanionController extends HPCompanionCombatController;

var int NumCreaturesShotThisWave;
var KWPawn aTargetCreature;
var float TimeBetweenShots;
var int NumCreaturesToShootPerWave;
var float TimeOfNextShot;

defaultproperties
{
     ccmClassType=Class'HGame.PoxieManager'
}
