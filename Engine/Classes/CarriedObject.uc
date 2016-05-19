class CarriedObject extends Actor notplaceable;

// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)

//UW Added Code Enums
	enum NoneFalseTrue
	{
		NFT_None,
		NFT_False,
		NFT_True,
	};

	var() enum ELumosType
	{
		Lumos_None,
		Lumos_Appear,
		Lumos_Disappear

	} LumosType;

	var(Advanced) enum EMountAction
	{
		MA_AutoFinishMount,
		MA_AbleFinishMount,
		MA_UnAbleFinishMount,
		MA_StepUpOnlyMount,
	} MountAction;

	var(Collision) enum ECollideType {
		CT_Cylinder,
		CT_Box,
	}
	CollideType;
var(Advanced) EMaterialType MaterialType;
//End of UW Added Code

//UW Added Code Structs
//End of UW Added Code

//UW Added Code Vars
	var(Lighting) bool bNoShadows;
	var bool bNoLightTransitionEffect;
	var bool bSpecialHidden;
	var(Advanced) bool bHideOnDetailDrop;
	var bool bHiddenFromDetailDrop;
	var(Advanced) bool bDoStasisRegardlessOfPhysics;
	var(Display) float LODBiasSW;
	var(Display) byte MaxLights;
	var byte AmbientGlow255High;
	var(Display) float AmbientGlow255Period;
	var(Display) float CullDistanceSW;
	var vector SavedPrePivot;
	var(Advanced) bool bDontBatch;
	var(Sound) float TransientSoundPitch;
	var(Collision) const float CollisionWidth;
	var bool bSavedBlocksCamera;
	var bool bSavedProjTarget;
	var(Movement) bool bSmoothDesiredRot;
	var(Movement) rotator RotationalAcceleration;
	var(Movement) float fRotationalTightness;
	var float currentYawVelocity;
	var float currentPitchVelocity;
	var float currentRollVelocity;
	var(Advanced) bool bAlwaysSpawnInEd;
	var(Collision) bool bAlignBottom;
	var(Collision) bool bAlignBottomAlways;
	var() String Label;
	var(Editing) bool bPauseWithSpecial;
	var bool bSpecialPaused;
	var(Advanced) bool bIsMountable;
	var(Collision) bool bBlocksCamera;
	var(Display) bool bUseSkinColorMod;
	var(Display) Color SkinColorModifier;
	var transient bool OpacityInitted;
	var array < vector > EditorLinesStart;
	var array < vector > EditorLinesEnd;
	var array < Color > EditorLinesColor;
	var(animation) float fDefaultAnimRate;
	var(animation) float fDefaultTweenTime;
	var(animation) int DefaultAnimChannel;
	var(Animations) export editinline array < AnimNotify > AnimNotifys;
	var(Reaction) class < Projectile > vulnerableToClass;
	var(Targeting) float SizeModifier;
	var(Targeting) vector CentreOffset;
	var(Targeting) float GestureDistance;
	var(Targeting) bool bGestureFaceHorizOnly;
	var(Targeting) bool bMustClickToTarget;
	var(GameState) array < string > ExcludeFromGameStates;
	var bool bInCurrentGameState;
	var(Opacity) bool bChangeOpacityForCamera;
	var(Opacity) float DesiredOpacityForCamera;
	var(Opacity) float SpeedOpacityForCamera;
	var float CurrentOpacityForCamera;
	var bool bDetailChanged;
	var bool bOldCollideActors;
	var bool bOldBlockActors;
	var bool bOldBlockPlayers;
//End of UW Added Code

var bool            bHome;
var bool            bHeld;

var PlayerReplicationInfo HolderPRI;
var Pawn      Holder;

var const NavigationPoint LastAnchor;		// recent nearest path
var		float	LastValidAnchorTime;	// last time a valid anchor was found

replication
{
    reliable if (Role == ROLE_Authority)
        bHome, bHeld, HolderPRI;
}

function Actor Position()
{
    if (bHeld)
        return Holder;

    return self;
}

// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)

// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)

// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)

// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)

// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)

// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)
// (cpptext)

cpptext
{
	INT* GetOptimizedRepList( BYTE* Recent, FPropertyRetirement* Retire, INT* Ptr, UPackageMap* Map, UActorChannel* Channel );







}


defaultproperties
{
     DrawType=DT_Mesh
     bOrientOnSlope=True
     bAlwaysZeroBoneOffset=True
     bUseCylinderCollision=True
}
