Class RetractumTarget extends HPProps;

#exec Texture Import File=Textures\SpongifyTexture.bmp Name=SpongifyTexture Mips=Off Flags=2
#exec Texture Import File=Textures\SPSCarpeRetractum.bmp Name=SPSCarpeRetractum Mips=Off MASKED=1

enum RetractumType {
  RT_Target,
  RT_Spring,
  RT_Winch,
  RT_PullDrop
};

var() RetractumType type;
var() name LandingLocationTag;
var() float fApexHeight;
var float fAdjustedApexHeight;
var() float fSwingRadius;
var() float fPullAcceleration;
var float fDesiredPullAccel;
var() float fMinimumZVelocity;
var() bool bActive;
var() bool bTriggerToggles;
var() float fSpellEndSize;
var() Vector vTargetOffset;
var Vector vAdjustedTargetOffset;
var() float fCordLength;
var() float fTimeForSpellToGetThere;
var() float fTimeToAccelerateHoriz;
var() float fSpringCoefficient;
var() Vector Dampening;
var() float fTimeToWinch;
var int numWinchOscillations;
var() bool bAllowSlowDrop;
var bool bReachedApex;
var bool bReachedDest;
var bool bStillAccel;
var Sound PullLoopSound;
var float fTimeToAccelerate;
var float fLateralAccelFactor;
var float fTimeSoFar;
var float fTimeToApex;
var float fTimeToTarget;
var Vector vTargetDir;
var Actor LandingActor;
var Actor Target;
var Pawn spellCaster;
var RetractumSpell castSpell;
var Vector vOrigPos;
var bool bTemp;
var bool bFallHack;
var bool bUseVertAccel;
var float fDistOverHeight;
var float AccelPlusGravity;
var float timeSinceRemind;
var() float timeToRemind;
var int remindDialogIndex;

defaultproperties
{
     fSwingRadius=-1.000000
     fPullAcceleration=1500.000000
     bActive=True
     fCordLength=128.000000
     fTimeForSpellToGetThere=-1.000000
     fTimeToAccelerateHoriz=0.300000
     fSpringCoefficient=400.000000
     Dampening=(X=0.000500,Y=0.000500,Z=0.000010)
     fTimeToWinch=3.000000
     PullLoopSound=Sound'SoundEffects.Magic.spell_carpe_loop'
     bFallHack=True
     vulnerableToClass=Class'HGame.RetractumSpell'
     DrawType=DT_Sprite
     Texture=Texture'HGame.SPSCarpeRetractum'
     CollisionHeight=20.000000
     bCollideWorld=False
     bBlockActors=False
     bBlockPlayers=False
}
