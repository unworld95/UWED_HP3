Class HPGenericStudent extends HPCharacter;

const MIN_SIDE_DIST= 50.0;
const CAM_FOCUS_Z_OFFSET= 15.0;
const VENDOR_CAM_Z_OFFSET= 30.0;
const VendorPkg= "Vendor";
const VENDOR_CAM_FLY_TIME= 2.0;
const LURE_DIALOG_REPEAT_TIME= 10.0;

enum EGender {
  Gender_Random,
  Gender_Male,
  Gender_Female
};

enum ESkinColor {
  SkinColor_Random,
  SkinColor_Black,
  SkinColor_Brown,
  SkinColor_White
};

enum EHouse {
  House_Random,
  House_Gry,
  House_Huf,
  House_Rav,
  House_Sly
};

enum EHairStyle {
  HairStyle_Random,
  HairStyle_01,
  HairStyle_02,
  HairStyle_03
};

enum EHairColor {
  HairColor_Random,
  HairColor_Black,
  HairColor_Brunette,
  HairColor_Blond,
  HairColor_Red
};

enum EIsPrefect {
  Student_PrefectRandom,
  Student_Prefect,
  Student_Regular
};

enum EStudentAge {
  StudentAge_Random,
  StudentAge_Younger,
  StudentAge_Older
};

enum ERightOrLeft {
  Right,
  Left
};

enum ECurrency {
  Jellybeans,
  CauldronCakes,
  PumpkinPasties
};

var(Vendor) bool bIsVendor;
var(Vendor) ECurrency CurrencyType;
var(Vendor) int cost;
var(Vendor) float LureRadius;
var(Vendor) float TransactionRadius;
var(Vendor) name NavToActorWhenEmpty;
var VI_StudentWizardCard CardVendorItem;
var transient float LastLureProxCheck;
var transient float LastLureDialogTime;
var transient bool bForceLureDialog;
var transient name OldPlayerControllerState;
var transient Rotator TargetCameraRot;
var transient bool bOldShouldRotate;
var transient ERightOrLeft CameraDir;
var transient bool bInitialCameraRot;
var transient Vector CameraFocalPoint;
var transient Vector cameraLoc;
var transient int SplineY;
var transient float StartTime;
var array<string> MaleLureDlg;
var array<string> FemaleLureDlg;
var Actor HairActor;
var float fLifeTime;
var bool bLimitedLife;
var() float PrefectSpawnChance;
var array<string> MaleHairMeshArray;
var array<string> FemaleHairMeshArray;
var array<string> BodyMeshArray;
var array<Material> MaleHairArray;
var array<Material> MaleFaceArray;
var array<Material> MaleUpperUniformArray;
var array<Material> MaleLowerUniformArray;
var array<Material> MaleUniformArray;
var array<Material> MalePrefectUniformArray;
var array<Material> MaleSashArray;
var array<Material> FemaleHairArray;
var array<Material> FemaleFaceArray;
var array<Material> FemaleUpperUniformArray;
var array<Material> FemaleLowerUniformArray;
var array<Material> FemaleUniformArray;
var array<Material> FemalePrefectUniformArray;
var array<Material> FemaleSashArray;
var array<Material> EyeArray;
var array<Material> HandsArray;
var() int TooFar;
var() int TooClose;
var GenericMobileSpawner SpawnedBy;
var() EStudentAge StudentAge;
var EIsPrefect IsPrefect;
var() EHairColor HairColor;
var() EHairStyle HairStyle;
var() EHouse House;
var() ESkinColor SkinColor;
var() EGender Gender;

defaultproperties
{
     LureRadius=500.000000
     TransactionRadius=80.000000
     MaleLureDlg(0)="PC_MVE_BUMPLINE_721"
     MaleLureDlg(1)="PC_MVE_BUMPLINE_722"
     MaleLureDlg(2)="PC_MVE_BUMPLINE_723"
     MaleLureDlg(3)="PC_MVE_BUMPLINE_724"
     FemaleLureDlg(0)="PC_FVE_BUMPLINE_725"
     FemaleLureDlg(1)="PC_FVE_BUMPLINE_726"
     FemaleLureDlg(2)="PC_FVE_BUMPLINE_727"
     FemaleLureDlg(3)="PC_FVE_BUMPLINE_728"
     MaleHairMeshArray(0)="HPCharacters.GenMaleHair01"
     MaleHairMeshArray(1)="HPCharacters.GenMaleHair02"
     MaleHairMeshArray(2)="HPCharacters.GenMaleHair03"
     FemaleHairMeshArray(0)="HPCharacters.GenFemHair01"
     FemaleHairMeshArray(1)="HPCharacters.GenFemHair02"
     FemaleHairMeshArray(2)="HPCharacters.GenFemHair03"
     BodyMeshArray(0)="HPCharacters_32.GenMale"
     BodyMeshArray(1)="HPCharacters_32.GenFemale"
     BodyMeshArray(2)="HPCharacters_32.GenMalePrefect"
     BodyMeshArray(3)="HPCharacters_32.GenFemPrefect"
     MaleHairArray(0)=Texture'HPCharTextures.Generic_Students.HP3GenMale_Hair01_Black'
     MaleHairArray(1)=Texture'HPCharTextures.Generic_Students.HP3GenMale_Hair01_Brunette'
     MaleHairArray(2)=Texture'HPCharTextures.Generic_Students.HP3GenMale_Hair01_Blond'
     MaleHairArray(3)=Texture'HPCharTextures.Generic_Students.HP3GenMale_Hair01_Redhead'
     MaleHairArray(4)=Texture'HPCharTextures.Generic_Students.HP3GenMale_Hair02_Black'
     MaleHairArray(5)=Texture'HPCharTextures.Generic_Students.HP3GenMale_Hair02_Brunette'
     MaleHairArray(6)=Texture'HPCharTextures.Generic_Students.HP3GenMale_Hair02_Blond'
     MaleHairArray(7)=Texture'HPCharTextures.Generic_Students.HP3GenMale_Hair02_Redhead'
     MaleHairArray(8)=Texture'HPCharTextures.Generic_Students.HP3GenMale_Hair03_Black'
     MaleHairArray(9)=Texture'HPCharTextures.Generic_Students.HP3GenMale_Hair03_Brunette'
     MaleHairArray(10)=Texture'HPCharTextures.Generic_Students.HP3GenMale_Hair03_Blond'
     MaleHairArray(11)=Texture'HPCharTextures.Generic_Students.HP3GenMale_Hair03_Redhead'
     MaleFaceArray(0)=Texture'HPCharTextures.Generic_Students.HP3GenMale_FaceBlack'
     MaleFaceArray(1)=Texture'HPCharTextures.Generic_Students.HP3GenMale_FaceBrown'
     MaleFaceArray(2)=Texture'HPCharTextures.Generic_Students.HP3GenMale_FaceWhite'
     MaleUpperUniformArray(0)=Shader'HPCharTextures.Generic_Students.HP3GenMale_CloakGryS'
     MaleUpperUniformArray(1)=Shader'HPCharTextures.Generic_Students.HP3GenMale_CloakHufS'
     MaleUpperUniformArray(2)=Shader'HPCharTextures.Generic_Students.HP3GenMale_CloakRavS'
     MaleUpperUniformArray(3)=Shader'HPCharTextures.Generic_Students.HP3GenMale_CloakSlyS'
     MaleLowerUniformArray(0)=Shader'HPCharTextures.Generic_Students.HP3GenMale_CloakGry2S'
     MaleLowerUniformArray(1)=Shader'HPCharTextures.Generic_Students.HP3GenMale_CloakHuf2S'
     MaleLowerUniformArray(2)=Shader'HPCharTextures.Generic_Students.HP3GenMale_CloakRav2S'
     MaleLowerUniformArray(3)=Shader'HPCharTextures.Generic_Students.HP3GenMale_CloakSly2S'
     MaleUniformArray(0)=Texture'HPCharTextures.Generic_Students.HP3GenMale_UniformGry'
     MaleUniformArray(1)=Texture'HPCharTextures.Generic_Students.HP3GenMale_UniformHuf'
     MaleUniformArray(2)=Texture'HPCharTextures.Generic_Students.HP3GenMale_UniformRav'
     MaleUniformArray(3)=Texture'HPCharTextures.Generic_Students.HP3GenMale_UniformSly'
     MalePrefectUniformArray(0)=Shader'HPCharTextures.Generic_Students.HP3GenMale_CloakGryPrefectS'
     MalePrefectUniformArray(1)=Shader'HPCharTextures.Generic_Students.HP3GenMale_CloakHufPrefectS'
     MalePrefectUniformArray(2)=Shader'HPCharTextures.Generic_Students.HP3GenMale_CloakRavPrefectS'
     MalePrefectUniformArray(3)=Shader'HPCharTextures.Generic_Students.HP3GenMale_CloakSlyPrefectS'
     MaleSashArray(0)=Texture'HPCharTextures.Generic_Students.HP3GenMale_SashGry'
     MaleSashArray(1)=Texture'HPCharTextures.Generic_Students.HP3GenMale_SashHuf'
     MaleSashArray(2)=Texture'HPCharTextures.Generic_Students.HP3GenMale_SashRav'
     MaleSashArray(3)=Texture'HPCharTextures.Generic_Students.HP3GenMale_SashSly'
     FemaleHairArray(0)=Texture'HPCharTextures.Generic_Students.HP3GenFem_Hair01_Black'
     FemaleHairArray(1)=Texture'HPCharTextures.Generic_Students.HP3GenFem_Hair01_Brunette'
     FemaleHairArray(2)=Texture'HPCharTextures.Generic_Students.HP3GenFem_Hair01_Blond'
     FemaleHairArray(3)=Texture'HPCharTextures.Generic_Students.HP3GenFem_Hair01_Redhead'
     FemaleHairArray(4)=Texture'HPCharTextures.Generic_Students.HP3GenFem_Hair02_Black'
     FemaleHairArray(5)=Texture'HPCharTextures.Generic_Students.HP3GenFem_Hair02_Brunette'
     FemaleHairArray(6)=Texture'HPCharTextures.Generic_Students.HP3GenFem_Hair02_Blond'
     FemaleHairArray(7)=Texture'HPCharTextures.Generic_Students.HP3GenFem_Hair02_Redhead'
     FemaleHairArray(8)=Texture'HPCharTextures.Generic_Students.HP3GenFem_Hair03_Black'
     FemaleHairArray(9)=Texture'HPCharTextures.Generic_Students.HP3GenFem_Hair03_Brunette'
     FemaleHairArray(10)=Texture'HPCharTextures.Generic_Students.HP3GenFem_Hair03_Blond'
     FemaleHairArray(11)=Texture'HPCharTextures.Generic_Students.HP3GenFem_Hair03_Redhead'
     FemaleFaceArray(0)=Texture'HPCharTextures.Generic_Students.HP3GenFem_FaceBlack'
     FemaleFaceArray(1)=Texture'HPCharTextures.Generic_Students.HP3GenFem_FaceBrown'
     FemaleFaceArray(2)=Texture'HPCharTextures.Generic_Students.HP3GenFem_FaceWhite'
     FemaleUpperUniformArray(0)=Shader'HPCharTextures.Generic_Students.HP3GenFem_CloakGryS'
     FemaleUpperUniformArray(1)=Shader'HPCharTextures.Generic_Students.HP3GenFem_CloakHufs'
     FemaleUpperUniformArray(2)=Shader'HPCharTextures.Generic_Students.HP3GenFem_CloakRavS'
     FemaleUpperUniformArray(3)=Shader'HPCharTextures.Generic_Students.HP3GenFem_CloakSlyS'
     FemaleLowerUniformArray(0)=Shader'HPCharTextures.Generic_Students.HP3GenFem_CloakGry2S'
     FemaleLowerUniformArray(1)=Shader'HPCharTextures.Generic_Students.HP3GenFem_CloakHuf2S'
     FemaleLowerUniformArray(2)=Shader'HPCharTextures.Generic_Students.HP3GenFem_CloakRav2S'
     FemaleLowerUniformArray(3)=Shader'HPCharTextures.Generic_Students.HP3GenFem_CloakSly2S'
     FemaleUniformArray(0)=Texture'HPCharTextures.Generic_Students.HP3GenFem_UniformGry'
     FemaleUniformArray(1)=Texture'HPCharTextures.Generic_Students.HP3GenFem_UniformHuf'
     FemaleUniformArray(2)=Texture'HPCharTextures.Generic_Students.HP3GenFem_UniformRav'
     FemaleUniformArray(3)=Texture'HPCharTextures.Generic_Students.HP3GenFem_UniformSly'
     FemalePrefectUniformArray(0)=Shader'HPCharTextures.Generic_Students.HP3GenFem_CloakGryPrefectS'
     FemalePrefectUniformArray(1)=Shader'HPCharTextures.Generic_Students.HP3GenFem_CloakHufPrefectS'
     FemalePrefectUniformArray(2)=Shader'HPCharTextures.Generic_Students.HP3GenFem_CloakRavPrefectS'
     FemalePrefectUniformArray(3)=Shader'HPCharTextures.Generic_Students.HP3GenFem_CloakSlyPrefectS'
     FemaleSashArray(0)=Texture'HPCharTextures.Generic_Students.HP3GenFem_SashGry'
     FemaleSashArray(1)=Texture'HPCharTextures.Generic_Students.HP3GenFem_SashHuf'
     FemaleSashArray(2)=Texture'HPCharTextures.Generic_Students.HP3GenFem_SashRav'
     FemaleSashArray(3)=Texture'HPCharTextures.Generic_Students.HP3GenFem_SashSly'
     EyeArray(0)=Texture'HPCharTextures.Discard.at_gen_eye_green'
     EyeArray(1)=Texture'HPCharTextures.Discard.at_gen_eye_blue'
     EyeArray(2)=Texture'HPCharTextures.Discard.at_gen_eye_brown'
     HandsArray(0)=Texture'HPCharTextures.Generic_Students.HP3Gen_HandsLegsBlack'
     HandsArray(1)=Texture'HPCharTextures.Generic_Students.HP3Gen_handsLegsBrown'
     HandsArray(2)=Texture'HPCharTextures.Generic_Students.HP3Gen_handsLegsWhite'
     TooFar=10000
     GetOutOfMyWayPriority=1
     bDespawnable=True
     bUseCameraBlocker=False
     OffEdgeOfTrackEmotes(0)="pc_hry_HryEmotes_19"
     OffEdgeOfTrackEmotes(1)="pc_hry_HryEmotes_17"
     OffEdgeOfTrackEmotes(2)="pc_hry_HryEmotes_15"
     LandingStone(0)=Sound'SoundEffects.Movement.land_stone01_reverb'
     LandingStone(1)=Sound'SoundEffects.Movement.land_stone02_reverb'
     LandingStone(2)=Sound'SoundEffects.Movement.land_stone03_reverb'
     LandingRug(0)=Sound'SoundEffects.Movement.footstep_har_carpet01_walk'
     LandingRug(1)=Sound'SoundEffects.Movement.footstep_har_carpet02_walk'
     LandingRug(2)=Sound'SoundEffects.Movement.footstep_har_carpet03_walk'
     LandingWood(0)=Sound'SoundEffects.Movement.land_wood01_reverb'
     LandingWood(1)=Sound'SoundEffects.Movement.land_wood02_reverb'
     LandingWood(2)=Sound'SoundEffects.Movement.land_wood03_reverb'
     FootstepsStone(0)=Sound'SoundEffects.Movement.footstep_har_stone01_walk'
     FootstepsStone(1)=Sound'SoundEffects.Movement.footstep_har_stone02_walk'
     FootstepsStone(2)=Sound'SoundEffects.Movement.footstep_har_stone03_walk'
     FootstepsStone(3)=Sound'SoundEffects.Movement.footstep_har_stone04_walk'
     FootstepsRug(0)=Sound'SoundEffects.Movement.footstep_har_carpet01'
     FootstepsRug(1)=Sound'SoundEffects.Movement.footstep_har_carpet02'
     FootstepsRug(2)=Sound'SoundEffects.Movement.footstep_har_carpet03'
     FootstepsWood(0)=Sound'SoundEffects.Movement.footstep_har_wood01'
     FootstepsWood(1)=Sound'SoundEffects.Movement.footstep_har_wood02'
     FootstepsWood(2)=Sound'SoundEffects.Movement.footstep_har_wood03'
     FootstepsWood(3)=Sound'SoundEffects.Movement.footstep_har_wood04'
     FootstepsWet(0)=Sound'SoundEffects.Character.HAR_foot_wet1'
     FootstepsWet(1)=Sound'SoundEffects.Character.HAR_foot_wet2'
     FootstepsWet(2)=Sound'SoundEffects.Character.HAR_foot_wet3'
     FootstepsGrass(0)=Sound'SoundEffects.Movement.footstep_har_grass01'
     FootstepsGrass(1)=Sound'SoundEffects.Movement.footstep_har_grass02'
     FootstepsGrass(2)=Sound'SoundEffects.Movement.footstep_har_grass03'
     FootstepsMetal(0)=Sound'SoundEffects.Movement.footstep_har_metal01'
     FootstepsMetal(1)=Sound'SoundEffects.Movement.footstep_har_metal02'
     FootstepsMetal(2)=Sound'SoundEffects.Movement.footstep_har_metal03'
     FootstepsNone(0)=Sound'SoundEffects.Movement.footstep_har_stone01_walk'
     FootstepsNone(1)=Sound'SoundEffects.Movement.footstep_har_stone02_walk'
     FootstepsNone(2)=Sound'SoundEffects.Movement.footstep_har_stone03_walk'
     FootstepVolume=0.600000
     FootFramesWalk(0)=1
     FootFramesWalk(1)=12
     FootFramesWalk(2)=24
     FootFramesWalk(3)=36
     FootFramesRun(0)=1
     FootFramesRun(1)=7
     IdleAnims(0)="ConversationAgree"
     IdleAnims(1)="ConversationCalmListen"
     IdleAnims(2)="ConversationCalmTalk"
     IdleAnims(3)="ConversationDunno"
     IdleAnims(4)="ConversationListen01"
     IdleAnims(5)="ConversationListen02"
     IdleAnims(6)="ConversationListen03"
     fChanceToPlayIdle=0.500000
     fMinDistBeforeStall=1.000000
     fTimeBeforeStall=0.500000
     fTimeToUseAdvancedTacticsAfterStall=1.000000
     MovementAnims(2)="Strafe_Left"
     MovementAnims(3)="Strafe_Right"
     ForwardStrafeBias=0.800000
     BackwardStrafeBias=0.800000
     Mesh=SkeletalMesh'HPCharacters_32.GenMale'
     CollisionHeight=41.000000
}
