//================================================================================
// SpawnThingy.
//================================================================================

class SpawnThingy extends Triggers;

var() Class<Actor> SpawnClass;
var() float fVelocityModifier;
var() name SpawnTag;
var() bool bThrowItem;
var() bool bDisallowFall;
var() bool bKeepingTryingSpawnZOnly;
var() float fAdditionalZVelocity;
var() bool bNoIgnoreEncroachers;
var() name EventToSendWhenDestroyed;

defaultproperties
{
     fVelocityModifier=1.000000
     Texture=Texture'KWGame.SthingE'
     bCollideActors=False
     bCollideWorld=True
     bBlockActors=True
     bBlockPlayers=True
}
