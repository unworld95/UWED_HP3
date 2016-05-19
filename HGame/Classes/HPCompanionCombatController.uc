Class HPCompanionCombatController extends HPCompanionController;

var int RotationRateSave;
var Actor aLeadCharsFireTarget;
var Actor aFireTarget;
var int YawSave;
var int YawOffset;
var Vector vRandom;
var float fRandomDistance;
var float fTimeOfLastFightComment;
var bool bPlayPainCommentToggle;
var bool bPlayedCompliment;
var Class<CompanionCombatManager> ccmClassType;
var CompanionCombatManager ccm;
var float WaitToStartCastingTimer;

defaultproperties
{
     ccmClassType=Class'KWGame.CompanionCombatManager'
}
