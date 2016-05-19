Class MBookCombatManager extends CompanionCombatManager;

var MonsterBook book;
var int iLastTCToCast;
var float TimeOfNextComment;
var HPHeroPawn LastKidToComment;
var HPHeroPawn HeroPawns[3];
var bool bDoComments;
var bool bActive;
var bool bFirstTimerDontSpawnPage;

defaultproperties
{
     DefaultEnemyClassType=Class'HGame.MonsterBookPage'
}
