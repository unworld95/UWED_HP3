//================================================================================
// CompanionCombatManager.
//================================================================================

class CompanionCombatManager extends CombatManager
  Placeable;

var KWPawn LeadChar;
var int NumInitialEnemies;
var float fTimeSinceLastKillByLeadChar;
var Pawn aFightWithHero_BossFocus;
var Vector vFightWithHero_BossFocus;
var Class<Actor> clsFightWithHero_BossType;
var name FightWithHero_BossTag;
var() Class<KWPawn> DefaultEnemyClassType;
var() name TagOfCreatures;
var Vector vBoxLLB;
var Vector vBoxURT;
var() RangeVector EnemyLoc_DestPositionRange;
var() name EventToSendWhenEnemyKilled;
var() name EventToSendWhenDone;
var float LeadCharLeaveFightRadius;
var() bool bUseFightStanceAnimsForCombat;
var() float AutoStopFightStanceAnimsDistance;
var bool bStoppedFightStanceAnimsThisGame;

function StartFight (KWPawn inLeadChar, KWPawn aBossFocus)
{
}

function StartFight_FoundInitialEnemy (Actor A)
{
}

function StopFight (bool bHerosWereSuccessful)
{
}


function EnemyKilled (Pawn Killer)
{
}

function BossDefeated ()
{
}


function bool IsManagerFor (KWPawn P)
{
  return false;
}

function bool ShouldPlayHelpComment ()
{
	return false;
}

auto state StateInactive
{
  
}

state StateActive
{
  
}

defaultproperties
{
     LeadCharLeaveFightRadius=400.000000
     bUseFightStanceAnimsForCombat=True
     AutoStopFightStanceAnimsDistance=1000.000000
}
