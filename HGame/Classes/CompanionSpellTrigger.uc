Class CompanionSpellTrigger extends SpellTrigger;

#exec Texture Import File=Textures\CompanionSpellTrigger.bmp Name=CompanionSpellTrigger Mips=Off Flags=2 MASKED=1

var() string CompanionLabel[2];
var name CompanionCastPointTag[3];
var CompanionCastPoint CompanionCastPoint[3];
var float CompanionActivateTime[2];
var float MainPlayerActivateTime;
var() bool bDontSendSingleHitEventIfCompanionSpellsOnWay;
var Actor LastValidTouchingActor;

defaultproperties
{
     bDontSendSingleHitEventIfCompanionSpellsOnWay=True
     bCallHandleSpellOnHPawnOwner=True
     Texture=Texture'HGame.CompanionSpellTrigger'
}
