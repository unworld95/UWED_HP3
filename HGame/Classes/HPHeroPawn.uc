Class HPHeroPawn extends HPCharacter;

var int RetractumAnimChannel;
var(Animation) name RetractumPullAnim;
var(Animation) name RetractumFlyPrepAnim;
var(Animation) name RetractumFlyUpAnim;
var(Animation) name RetractumApexAnim;
var(Animation) name RetractumFallAnim;
var(Animation) name RetractumLandHangAnim;
var(Animation) name RetractumHangAnim;
var(Animation) float RetractumFlyPrepAnimRate;
var(Animation) float RetractumFlyUpAnimRate;
var(Animation) float RetractumApexAnimRate;
var(Animation) float RetractumFallAnimRate;
var(Animation) float RetractumLandHangAnimRate;
var(Animation) float RetractumHangAnimRate;
var(Animation) float fAnimFrameSpellRelease;
var Actor RetTarget;
var name LastState;
var int BundiJumpAnimChannel;
var(Animation) name BundiJump1Anim;
var(Animation) name BundiJump2Anim;
var(sounds) array<string> RictusempraSounds_Talk_String;
var(sounds) array<string> AlohomoraSounds_Talk_String;
var(sounds) array<string> LumosSounds_Talk_String;
var(sounds) array<string> GlaciusSounds_Talk_String;
var(sounds) array<string> RetractumSounds_Talk_String;
var(sounds) array<string> RetractumSounds_Emote_String;
var(sounds) array<string> DiffendoSounds_Talk_String;
var(sounds) array<string> PatronumSounds_Talk_String;
var(sounds) array<string> LapiforsSounds_Talk_String;
var(sounds) array<string> SpongifySounds_Talk_String;
var(sounds) array<string> DepulsoSounds_Talk_String;
var(sounds) array<string> VerdSounds_Talk_String;
var(sounds) array<string> DracoSounds_Talk_String;
var array<Sound> RictusempraSounds_Talk;
var array<Sound> AlohomoraSounds_Talk;
var array<Sound> LumosSounds_Talk;
var array<Sound> GlaciusSounds_Talk;
var array<Sound> RetractumSounds_Talk;
var array<Sound> RetractumSounds_Emote;
var array<Sound> DiffendoSounds_Talk;
var array<Sound> PatronumSounds_Talk;
var array<Sound> LapiforsSounds_Talk;
var array<Sound> SpongifySounds_Talk;
var array<Sound> DepulsoSounds_Talk;
var array<Sound> VerdSounds_Talk;
var array<Sound> DracoSounds_Talk;
var float TakeNoDamageTime;
var bool bAllowTakeDamageOnNextLanding;
var EPhysics HackLastPhysics;
var float HackLastPhysicsChangeTime;
//var(Animations) export editinlineuse array<AnimNotify> AnimNotifys;
//var() string Label;
//var(PlayerControl) bool bIsMainPlayer;

defaultproperties
{
     RetractumPullAnim="CRpull"
     RetractumFlyPrepAnim="CR1catch"
     RetractumFlyUpAnim="CR2fly"
     RetractumApexAnim="CR3apex"
     RetractumFallAnim="CR4fall"
     RetractumLandHangAnim="CR5stretch"
     RetractumHangAnim="CR6dangle"
     RetractumFlyPrepAnimRate=0.750000
     RetractumFlyUpAnimRate=1.000000
     RetractumApexAnimRate=0.750000
     RetractumFallAnimRate=1.000000
     RetractumLandHangAnimRate=0.250000
     RetractumHangAnimRate=0.500000
     fAnimFrameSpellRelease=4.500000
     BundiJump1Anim="BundiJump1"
     BundiJump2Anim="BundiJump2"
     TakeNoDamageTime=-1000.000000
     GetOutOfMyWayPriority=10
     CameraSetStandard=(vLookAtOffset=(X=-15.000000,Z=65.000000),fLookAtDistance=170.000000,fLookAtHeight=30.000000,fRotTightness=8.000000,fRotSpeed=6.000000,fMoveTightness=(X=25.000000,Y=40.000000,Z=40.000000),fMaxMouseDeltaX=20000.000000,fMaxMouseDeltaY=10000.000000,fMinPitch=-14000.000000,fMaxPitch=14000.000000)
     CameraSnapRotationPitch=-1500.000000
     DefaultPlayerControllerClass=Class'HGame.HarryController'
     bUseBlobShadow=False
     OffEdgeOfTrackEmotes(0)="pc_hry_HryEmotes_19"
     OffEdgeOfTrackEmotes(1)="pc_hry_HryEmotes_17"
     OffEdgeOfTrackEmotes(2)="pc_hry_HryEmotes_15"
     SlidingFeetEmitterType=Class'HGame.GlaciusFeetEffect'
     CarryIdleAnimName="PropHoldIdle"
     CarryForwardAnimName="PropHoldWalk"
     CarryBackwardAnimName="PropHoldWalkBack"
     CarryKnockBackAnimName="CarryKnockBack"
     CarryStrafeLeftAnimName="PropHoldWalkLeft"
     CarryStrafeRightAnimName="PropHoldWalkRight"
     PickupAnimName="PropPickup"
     PickupAnimStartFrame=1
     PickupAnimRate=4.000000
     ThrowAnimName="PropThrowRighthand"
     ThrowAnimStartFrame=5
     KnockBackAnimName="AttackHitHardGlide"
     PickupBoneName="body_rhand"
     FootFramesRun(0)=1
     FootFramesRun(1)=7
     FootFramesCarry(0)=1
     FootFramesCarry(1)=12
     FootFramesCarry(2)=24
     FootFramesCarry(3)=36
     bUseNewMountCode=True
     IdleAnims(0)="FidgetKickDirt"
     IdleAnims(1)="FidgetLegPat"
     IdleAnims(2)="FidgetLookAround"
     IdleAnims(3)="FidgetLookBackLeft"
     IdleAnims(4)="FidgetShiftWeight"
     IdleAnims(5)="FidgetNod"
     IdleAnims(6)="FidgetPant"
     IdleAnims(7)="FidgetScratchScar"
     IdleDialogAnims(0)=(AnimName="FidgetScratchHead",Text="Dialog comment 1")
     IdleDialogAnims(1)=(AnimName="FidgetShakeHead",Text="Dialog comment 2")
     IdleDialogAnims(2)=(AnimName="FidgetShrug",Text="Dialog comment 3")
     IdleDialogAnims(3)=(AnimName="FidgetStrafe",Text="Dialog comment 3")
     IdleDialogAnims(4)=(AnimName="FidgetStrafe",Text="Dialog comment 3")
     IdleDialogAnims(5)=(AnimName="FidgetStretch",Text="Dialog comment 3")
     IdleDialogAnims(6)=(AnimName="FidgetTalk",Text="Dialog comment 3")
     IdleDialogAnims(7)=(AnimName="FidgetWandSwish",Text="Dialog comment 3")
     MaxLights=5
     bCanPickupInventory=True
     InitialState="StateIdleInactive"
     PrePivot=(Z=-42.000000)
     bProjTarget=False
}
