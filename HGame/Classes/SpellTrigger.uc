Class SpellTrigger extends KWTrigger;

#EXEC Texture IMPORT File=Textures\Spell_Trigger.bmp NAME=Spell_Trigger MASKED=1

var Actor TriggerOther;
var Pawn TriggerInst;
var(Events) name EventToSendOnSpellTarget;
var(Sound) bool bStopSpellSound;
var() float fTimeToTrigger;
var() bool bTriggerAfterTime;
var() float fSpellEndSize;
var bool bHitJustFromFront;
var() bool bCallHandleSpellOnHPawnOwner;
var float fHandleRetriggerDelayTime;
var(Reaction) float fMaxDistanceForReaction;
var(Reaction) Class<Projectile> vulnerableToClass;

defaultproperties
{
     fTimeToTrigger=1.000000
     TriggerType=TT_ClassProximity
     Texture=Texture'HGame.Spell_Trigger'
     bProjTarget=True
}
