class UWEmitter extends Emitter placeable;

//From UWActor

var(Collision) enum ECollideType
{
    CT_Cylinder,
    CT_Box,
}
CollideType;

enum NoneFalseTrue
{
    NFT_None,
    NFT_False,
    NFT_True
};
var() enum ELumosType
{
    Lumos_None,
    Lumos_Appear,
    Lumos_Disappear
}
LumosType;
var(Advanced) enum EMountAction
{
    MA_AutoFinishMount,
    MA_AbleFinishMount,
    MA_UnAbleFinishMount,
    MA_StepUpOnlyMount
}
MountAction;
var(Advanced) EMaterialType MaterialType;

//UW End

struct SavedEmitterInfo
{
    var bool bTriggerDisable;
    var bool bTriggerReset;
    var bool AutomaticInitialSpawning;
    var bool RespawnDeadParticles;
    var float ParticlesPerSecond;
    var float InitialParticlesPerSecond;
};

//From UWActor

var(Advanced) bool bHideOnDetailDrop;
var(Advanced) bool bDontBatch;
var(Advanced) bool bDoStasisRegardlessOfPhysics;
var(Advanced) bool bAlwaysSpawnInEd;
var(Advanced) bool bIsMountable;
var(animation) float fDefaultAnimRate;
var(animation) float fDefaultTweenTime;
var(animation) int DefaultAnimChannel;
var(Animations) export editinline array <AnimNotify> AnimNotifys;
var bool bNoLightTransitionEffect;
var bool bSpecialHidden;
var bool bHiddenFromDetailDrop;
var bool bSavedBlocksCamera;
var bool bSavedProjTarget;
var bool bSpecialPaused;
var bool bDetailChanged;
var bool bOldCollideActors;
var bool bOldBlockActors;
var bool bOldBlockPlayers;
var bool bInCurrentGameState;
var byte AmbientGlow255High;
var(Collision) const float CollisionWidth;
var(Collision) bool bAlignBottom;
var(Collision) bool bAlignBottomAlways;
var(Collision) bool bBlocksCamera;
var(Display) int AlphaSortLayer;
var(Display) float LODBiasSW;
 //var(Display) byte MaxLights;
var(Display) float AmbientGlow255Period;
var(Display) float CullDistanceSW;
var(Display) bool bUseSkinColorMod;
var(Display) Color SkinColorModifier;
var(Editing) bool bPauseWithSpecial;
var float currentYawVelocity;
var float currentPitchVelocity;
var float currentRollVelocity;
var float CurrentOpacityForCamera;
var(GameState) array <string> ExcludeFromGameStates;
var(Lighting) bool bNoShadows;
var(Movement) bool bSmoothDesiredRot;
var(Movement) rotator RotationalAcceleration;
var(Movement) float fRotationalTightness;
var(Opacity) bool bChangeOpacityForCamera;
var(Opacity) float DesiredOpacityForCamera;
var(Opacity) float SpeedOpacityForCamera;
var(Reaction) class <Projectile> vulnerableToClass;
var(Sound) float TransientSoundPitch;
var(Targeting) float SizeModifier;
var(Targeting) vector CentreOffset;
var(Targeting) float GestureDistance;
var(Targeting) bool bGestureFaceHorizOnly;
var(Targeting) bool bMustClickToTarget;
var transient bool OpacityInitted;
var vector SavedPrePivot;
var array <vector> EditorLinesStart;
var array <vector> EditorLinesEnd;
var array <Color> EditorLinesColor;
var() String Label;
var transient WorldInfo WorldInfo;

//UW End

var array < SavedEmitterInfo > savedInfos;
var() bool TriggerToggleSpawning;
var (Line) float fTimeToFill;
var float fTimeSoFar;
var (Line) bool bAddOverTime;
var (Line) bool bDeleteOverTime;
var (Acceleration) name AttractingActorTag;
delegate coords LineExpression(float alpha);

//From UWActor

static final function vector Vec(float X, float Y, float Z)
{
    local vector V;
    V.X = X;
    V.Y = Y;
    V.Z = Z;
    return V;
}
function CM(coerce String s) {
    local PlayerController pc;
    pc = PlayerController(level.playerHeroActor.Controller);
    if (pc == none) 
        foreach DynamicActors(class 'PlayerController', pc)
    break;
    if (pc == none) ;
    else 
        pc.ClientMessage(s);
}
function LogAndCM(coerce string s) {
    cm (s);
    Log(s);
}
function CMAndLog(coerce string s) {
    cm (s);
    Log(s);
}
function bool assertm(bool b, coerce string s)
{
    return b;
}
function DrawLines(Hud hud);
function UWActor GetActorFromLabel(String rTag)
{
    local UWActor rActor;
    local UWActor returnActor;
    local bool bFound;
	returnActor = rActor;
    if (rTag == "") 
        return none;

    foreach allactors(class 'UWActor', rActor)
    {
        if (rActor.Label ~= rTag) {
            if (!bFound) {
                returnActor = rActor;
                bFound = true;
            } else 
                cmAndLog("Error: " $name $rTag $ " found for " $returnActor $ " and " $rActor);
        }
    }

    if (returnActor == none) 
        cmAndLog("Error: No actor found with label:" $ rTag);
    
    return returnActor;
}
function Actor GetActorFromTag(name rTag)
{
    local Actor rActor;
    local Actor returnActor;
    local bool bFound;
    if (rTag == '') 
        return none;
    
    foreach allactors(class 'Actor', rActor, rTag)
    {
        if (!bFound) {
            returnActor = rActor;
            bFound = true;
        } else 
            cmAndLog("Error: " $name$ " " $rTag$ " found for " $returnActor $ " and " $rActor);
    }
    if (returnActor == none) 
        cmAndLog("Error: No actor found with label:" $ rTag);
    
    return returnActor;
}
function Sound GetRandSound(array <Sound> selectArray)
{
    if (selectArray.length > 0) 
        return selectArray[rand(selectArray.length)];
    else 
        return None;
}
function SoundGroup GetRandSoundGrp(array <SoundGroup> selectArray)
{
    if (selectArray.length > 0) 
        return selectArray[rand(selectArray.length)];
}
function int PlayFX(optional animGroup anim, optional array <SoundGroup> sounds)
{
    local SoundGroup sndgrp;
    local float fVolume,
    fPitch,
    fRadius,
    fRate,
    fTweenTime;
    local Range pRange;
    if (sounds.length > 0) {
        sndgrp = GetRandSoundGrp(sounds);
        fVolume = sndgrp.Volume;
        if (fVolume <= 0) 
            fVolume = TransientSoundVolume;
        
        fRadius = sndgrp.Radius;
        if (fRadius <= 0) 
            fRadius = TransientSoundRadius;
        
        fPitch = sndgrp.Pitch;
        if (fPitch <= 0) 
            fPitch = TransientSoundPitch;
        
        PRange = sndgrp.PitchRange;
        if (PRange.Min <= 0 && PRange.Max <= 0) {
            PRange.Min = 0.8;
            PRange.Max = 1.2;
        }
        PlaySound(sndgrp.Sound, sndgrp.slot, fVolume,, fRadius, fPitch * RandRange(pRange.Min, pRange.Max));
    }
    if (anim.anim != '' && HasAnim(anim.anim)) {
        fRate = anim.Rate;
        if (fRate <= 0) 
            fRate = fDefaultAnimRate;
        
        fTweenTime = anim.tweenTime;
        if (fTweenTime <= 0) 
            fTweenTime = fDefaultTweenTime;
        
        if (anim.bLoop) 
            LoopAnim(anim.anim, fRate, fTweenTime, DefaultAnimChannel);
        else 
            PlayAnim(anim.anim, fRate, fTweenTime, DefaultAnimChannel);
    }
    return DefaultAnimChannel;
}
function OnEvent(name EventName) {
    if (EventName == 'EnableSpellTarget') 
        bProjTarget = true;
    else if (EventName == 'DisableSpellTarget') 
        bProjTarget = false;
}

function OnLumosOn() {
    bSavedBlocksCamera = bBlocksCamera;
    bSavedProjTarget = bProjTarget;
    if (LumosType == Lumos_Disappear) {
        bBlocksCamera = false;
        bProjTarget = false;
    } else if (LumosType == Lumos_Appear) {
        bBlocksCamera = true;
        bProjTarget = true;
    }
}
function OnLumosOff() {
    bBlocksCamera = bSavedBlocksCamera;
    bProjTarget = bSavedProjTarget;
}
function bool TurnLumosOff()
{
    return false;
}

event string GetGameState()
{
    return "";
}

event FilterForCurrentGameState()
{
    local int i;
    local string CurGameState;
    bInCurrentGameState = true;
    if (WorldInfo == None) 
        return;
    CurGameState = GetGameState();
    if (CurGameState == "") 
        CurGameState = WorldInfo.strDefaultGameState;
    if (CurGameState == "") 
        return;
    
    if (ExcludeFromGameStates.Length > 0) 
        {
            bInCurrentGameState = true;
            for (i = 0; i < ExcludeFromGameStates.Length && bInCurrentGameState; i++) 
                if (CurGameState ~= ExcludeFromGameStates[i]) 
                    bInCurrentGameState = false;
        }
    else if (WorldInfo.GameStateGroupPrefix == "" || InStr(Caps(Group), Caps(WorldInfo.GameStateGroupPrefix)) == -1) 
        bInCurrentGameState = true;
    else 
        {
            bInCurrentGameState = InStr(Caps(Group), Caps(CurGameState)) != -1;
        }
    if (!bInCurrentGameState) {
        bHidden = true;
        SetCollision(false, false, false);
    }
}

function bool FancySetLocation(vector NewLocation, optional bool bZOnly, optional bool XYOnly, optional float AlternateDist)
{
    local float r;
    local vector v;
    v = NewLocation;
    if (v == vect(0, 0, 0)) 
        v = Location;
    
    if (AlternateDist == 0) 
        AlternateDist = 70;
    
    for (r = 0; r < AlternateDist; r += 2.5) {
        if (!bZOnly) {
            if (SetLocation(v + vec(r, 0, 0))) 
                return true;
            if (SetLocation(v + vec(-r, 0, 0))) 
                return true;
            if (SetLocation(v + vec(0, r, 0))) 
                return true;
            if (SetLocation(v + vec(0, -r, 0))) 
                return true;
        }
        if (!XYOnly && SetLocation(v + vec(0, 0, r))) 
            return true;
        if (!XYOnly && SetLocation(v + vec(0, 0, -r))) 
            return true;
    }
    Log("******* ERROR: FancySetLocation couldn't set location for '" $name$ "'");
    return false;
}
function actor FancySpawn(class <actor> type, optional actor owner, optional name SpawnTag, optional vector SpawnLocation, optional rotator SpawnRotation, optional bool bZOnly) {
    local float r;
    local actor a;
    local vector v;
    v = SpawnLocation;
    if (v == vect(0, 0, 0)) 
        v = Location;
    
    r = 0;
    for (r = 0; r < 70; r += 2.5) {
        if (!bZOnly) {
            a = spawn(type, owner, SpawnTag, v + vec(r, 0, 0), SpawnRotation);
            if (a != none) 
                return a;
            a = spawn(type, owner, SpawnTag, v + vec(-r, 0, 0), SpawnRotation);
            if (a != none) 
                return a;
            a = spawn(type, owner, SpawnTag, v + vec(0, r, 0), SpawnRotation);
            if (a != none) 
                return a;
            a = spawn(type, owner, SpawnTag, v + vec(0, -r, 0), SpawnRotation);
            if (a != none) 
                return a;
            a = spawn(type, owner, SpawnTag, v + vec(0, 0, -r), SpawnRotation);
            if (a != none) 
                return a;
        }
        a = spawn(type, owner, SpawnTag, v + vec(0, 0, r), SpawnRotation);
        if (a != none) 
            return a;
    }
    Log("******* ERROR: FancySpawn couldn't find location for '" $type$ "'");
    return none;
}
function vector ApproximateTrajectoryByTime(vector vPosStart, vector vPosEnd, float fTimeEnd, float accuracy, optional float AlternateZAccel)
{
    local vector Velocity,
    v;
    local float ZAccel,
    length,
    z;
    local int val,
    randval;
    local rotator r;
    if (AlternateZAccel != 0) 
        ZAccel = AlternateZAccel;
    else 
        ZAccel = PhysicsVolume.Gravity.Z;
    
    fTimeEnd = FMax(0.0001f, fTimeEnd);
    if ((accuracy >= 1.0) || (accuracy < 0.0)) 
        Velocity = (vPosEnd - vPosStart) / fTimeEnd;
    else {
        v = vPosEnd - vPosStart;
        z = v.Z;
        length = VSize2D(v);
        r = rotator(v);
        r.pitch = 0;
        r.roll = 0;
        val = 16384 * (1.0 - accuracy);
        randval = Rand(val);
        if (Rand(2) == 0) 
            r.yaw += randval;
        else 
            r.yaw -= randval;
        
        v = length * vector(r);
        v.Z += z;
        Velocity = v / fTimeEnd;
    }
    Velocity.z = ((vPosEnd.z - vPosStart.z) - (0.5f * ZAccel * (fTimeEnd * fTimeEnd))) / fTimeEnd;
    return Velocity;
}
function vector ComputeTrajectoryByTime(vector vPosStart, vector vPosEnd, float fTimeEnd, optional float AlternateZAccel)
{
    local vector Velocity;
    local float ZAccel;
    if (AlternateZAccel != 0) 
        ZAccel = AlternateZAccel;
    else 
        ZAccel = PhysicsVolume.Gravity.Z;
    
    fTimeEnd = FMax(0.0001f, fTimeEnd);
    Velocity = (vPosEnd - vPosStart) / fTimeEnd;
    Velocity.z = ((vPosEnd.z - vPosStart.z) - (0.5f * ZAccel * (fTimeEnd * fTimeEnd))) / fTimeEnd;
    return Velocity;
}
function vector ComputeTrajectoryByVelocity(vector vPosStart, vector vPosEnd, float fStartVelocity, optional float AlternateZAccel)
{
    local vector Velocity,
    vDelta;
    local float ZAccel,
    D,
    DeltaXY,
    sinB,
    cosB,
    a,
    b,
    c,
    angle,
    tanA,
    tanA1,
    tanA2,
    sqrtOfD,
    fNewStartVelocity;
    if (AlternateZAccel != 0) 
        ZAccel = AlternateZAccel;
    else 
        ZAccel = PhysicsVolume.Gravity.Z;
    
    vDelta = vPosEnd - vPosStart;
    if (VSize2D(vDelta) == 0) {
        Velocity.X = 0;
        Velocity.Y = 0;
        D = fStartVelocity * fStartVelocity + 2 * ZAccel * vDelta.Z;
        if (D < 0.0f) {
            Velocity.Z = sqrt(-2.0f * ZAccel * vDelta.Z);
            level.playerHeroActor.ClientMessage("Start Velocity = " $fStartVelocity $ " is too small! Shot Up/Down using velocity " $Velocity.Z);
            log("Start Velocity = " $fStartVelocity $ " is too small! Shot Up/Down using velocity " $Velocity.Z);
        } else {
            Velocity.Z = fStartVelocity;
        }
        return Velocity;
    }
    DeltaXY = VSize2D(vDelta);
    cosB = vDelta.X / DeltaXY;
    sinB = vDelta.Y / DeltaXY;
    a = (0.5f * ZAccel * DeltaXY * DeltaXY) / (fStartVelocity * fStartVelocity);
    b = DeltaXY;
    c = (0.5f * ZAccel * DeltaXY * DeltaXY) / (fStartVelocity * fStartVelocity) - vDelta.Z;
    D = b * b - 4 * a * c;
    if (D < 0.0f) {
        fNewStartVelocity = DeltaXY * sqrt(ZAccel / (vDelta.Z - VSize(vDelta)));
        level.playerHeroActor.ClientMessage("Start Velocity = " $fStartVelocity $ " is too small!");
        log("Start Velocity = " $fStartVelocity $ " is too small! Use new velocity = " $fNewStartVelocity);
        a = (0.5f * ZAccel * DeltaXY * DeltaXY) / (fNewStartVelocity * fNewStartVelocity);
        b = DeltaXY;
        tanA = 0.5f * (-b) / a;
        angle = atan(tanA, 1);
        Velocity.X = fNewStartVelocity * cos(angle) * cosB;
        Velocity.Y = fNewStartVelocity * cos(angle) * sinB;
        Velocity.Z = fNewStartVelocity * sin(angle);
        return Velocity;
    }
    sqrtOfD = sqrt(D);
    tanA1 = 0.5f * (-b + sqrtOfD) / a;
    tanA2 = 0.5f * (-b - sqrtOfD) / a;
    if (abs(tanA1) < abs(tanA2)) 
        tanA = tanA1;
    else 
        tanA = tanA2;
    
    angle = atan(tanA, 1);
    Velocity.X = fStartVelocity * cos(angle) * cosB;
    Velocity.Y = fStartVelocity * cos(angle) * sinB;
    Velocity.Z = fStartVelocity * sin(angle);
    return Velocity;
}
function vector ComputeTrajectoryByAngle(vector vPosStart, vector vPosEnd, float fStartAngle, optional float AlternateZAccel)
{
    local vector Velocity,
    vDelta;
    local float ZAccel,
    DeltaXY,
    angle,
    fCoefficient,
    ratio,
    sinB,
    cosB,
    tanA;
    angle = fStartAngle * Pi / 180.0f;
    if (angle >= Pi / 2) 
        angle = Pi * 0.49f;
    else if (angle <= -Pi / 2) 
        angle = -Pi * 0.49f;
    
    if (AlternateZAccel != 0) 
        ZAccel = AlternateZAccel;
    else 
        ZAccel = PhysicsVolume.Gravity.Z;
    
    vDelta = vPosEnd - vPosStart;
    DeltaXY = VSize2D(vDelta);
    cosB = vDelta.X / DeltaXY;
    sinB = vDelta.Y / DeltaXY;
    tanA = tan(angle);
    ratio = vDelta.Z / DeltaXY;
    if (tanA < ratio) {
        angle = atan(ratio, 1);
        if (angle > 0) 
            angle = 1.1f * angle;
        else if (angle < 0) 
            angle = 0.9f * angle;
        else 
            angle = 0.1f;
        tanA = tan(angle);
    }
    ratio = 0.5f * ZAccel / (vDelta.Z - DeltaXY * tanA);
    if (ratio < 0) {
        ratio = 1;
        log("*** imaginary solution in ComputeTrajectoryByAngle");
    }
    fCoefficient = DeltaXY * sqrt(ratio);
    Velocity.X = fCoefficient * cosB;
    Velocity.Y = fCoefficient * sinB;
    Velocity.Z = fCoefficient * tanA;
    return Velocity;
}

function bool IsSoftwareRendering(){
	return false;
}

event Spawned();
event SavePersistentData();

event PreBeginPlay()
{
	Super.PreBeginPlay();
}

event PostLoadGame(bool bLoadFromSaveGame);
event PreSaveGame();
event PostSaveGame();
event TravelExporting();

//UW End


auto State StateBegin
{
}

function Save(int index) {
    savedInfos.Insert(index, 1);
    savedInfos[index].bTriggerDisable = Emitters[index].TriggerDisabled;
    savedInfos[index].bTriggerReset = Emitters[index].ResetOnTrigger;
    savedInfos[index].AutomaticInitialSpawning = Emitters[index].AutomaticInitialSpawning;
    savedInfos[index].ParticlesPerSecond = Emitters[index].ParticlesPerSecond;
    savedInfos[index].InitialParticlesPerSecond = Emitters[index].InitialParticlesPerSecond;
    savedInfos[index].RespawnDeadParticles = Emitters[index].RespawnDeadParticles;
}
function Setup() {}
function SetAllActive(bool bSetActive) {
    local int i;
    for (i = 0; i < Emitters.length; i++) 
        SetActive(bSetActive, i);
}
function SetActive(bool bSetActive, int i) {
    if (i < 0 || i > Emitters.length || Emitters[i] == none) 
        return;
    
    Emitters[i].Disabled = false;
    AutoReset = false;
    Emitters[i].RespawnDeadParticles = bSetActive;
    Emitters[i].ResetOnTrigger = bSetActive;
    Emitters[i].TriggerDisabled = false;
    if (!bSetActive) {
        Emitters[i].ParticlesPerSecond = 0.0000;
        Emitters[i].InitialParticlesPerSecond = 0;
    } else {
        Emitters[i].ParticlesPerSecond = savedInfos[i].ParticlesPerSecond;
        Emitters[i].InitialParticlesPerSecond = savedInfos[i].InitialParticlesPerSecond;
    }
    Emitters[i].Trigger();
}

event Trigger(Actor Other, Pawn EventInstigator)
{
    local int i;
    for (i = 0; i < Emitters.Length; i++) {
        if (Emitters[i] == none) 
            continue;
        
        if (TriggerToggleSpawning) {
            AutoReset = false;
            if (Emitters[i].Disabled) {
                Emitters[i].TriggerDisabled = true;
            } else {
                Emitters[i].TriggerDisabled = false;
                if (!Emitters[i].RespawnDeadParticles) {
                    Emitters[i].ResetOnTrigger = true;
                    Emitters[i].RespawnDeadParticles = true;
                    Emitters[i].ParticlesPerSecond = savedInfos[i].ParticlesPerSecond;
                    Emitters[i].InitialParticlesPerSecond = savedInfos[i].InitialParticlesPerSecond;
                    Emitters[i].AutomaticInitialSpawning = true;
                } else 
                    {
                        Emitters[i].ResetOnTrigger = false;
                        Emitters[i].RespawnDeadParticles = false;
                        Emitters[i].ParticlesPerSecond = 0;
                        Emitters[i].InitialParticlesPerSecond = 0;
                        Emitters[i].AutomaticInitialSpawning = false;
                    }
                }
        } else 
            {
                Emitters[i].RespawnDeadParticles = savedInfos[i].RespawnDeadParticles;
                Emitters[i].TriggerDisabled = savedInfos[i].bTriggerDisable;
                Emitters[i].ResetOnTrigger = savedInfos[i].bTriggerReset;
                Emitters[i].ParticlesPerSecond = savedInfos[i].ParticlesPerSecond;
                Emitters[i].InitialParticlesPerSecond = savedInfos[i].InitialParticlesPerSecond;
            }
        
        if (Emitters[i] != None) 
            Emitters[i].Trigger();
    }
}

defaultproperties
{
    AutoDestroy=True
    AlphaSortLayer=1
}