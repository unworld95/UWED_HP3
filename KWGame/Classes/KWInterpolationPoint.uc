//================================================================================
// KWInterpolationPoint.
//================================================================================

class KWInterpolationPoint extends InterpolationPoint;

struct SwitchInfo_Priv
{
  var KWInterpolationPoint Next;
};

struct SwitchInfo
{
  var() float Chance;
  var() name PathName;
  var() int PathPosition;
};  
  
var() name PathName;
var() int Position;
var() bool bEndOfPath;
var() bool bInstantNextPath;
var() bool bFaceMoveDirection;
var bool bSmoothPath;
var() bool bConstantSpeed;
var bool bTurnChange;
var() float Pause[8];
var() name ViewTargetTag[8];
var() bool bNewRotationSmoothing;
var transient Actor ViewTarget[8];
var() name Events[8];
var() Color Color_Path;
var() Color Color_SwitchNoChance;
var() Color Color_SwitchInstant;
var() Color Color_Switch;
var KWInterpolationPoint Prev;
var KWInterpolationPoint Next;
var() Vector StartControlPoint;
var() Vector EndControlPoint;
var() float Smoothing;
var() float DesiredSpeed;
var float PathDist;
var(SplineActions) name PatrolAnim;
var(SplineActions) float tweenTime;
var(SplineActions) Sound PatrolSound;
var(SplineActions) float PauseTime;
var(SplineActions) name PauseAnim;
var(SplineActions) bool bUseLookDir;
var(SplineActions) name EventToSend;
var(SplineActions) bool bDestroyPawn;
var() SwitchInfo Switches_Forward[8];
var() SwitchInfo Switches_Reverse[8];
var SwitchInfo_Priv Switches_Forward_Priv[8];
var SwitchInfo_Priv Switches_Reverse_Priv[8];
var() Vector MaxPenalty;
var() Vector MinPenalty;
var() Vector MaxOffset;
var() Vector MinOffset;
var() Vector MaxOffsetNonPenalty;
var() Vector MinOffsetNonPenalty;


simulated function BeginPlay ()
{
}

function bool PlusDir (int A, int B)
{
  return True;
}


function bool UsingPauses ()
{
	return False;
}

simulated event KWInterpolateEnd (InterpolationManager Other, bool bForward)
{
}

function TriggerAllEvents (Pawn Instigator)
{
}

defaultproperties
{
     PathName="MyPath"
     bFaceMoveDirection=True
     bSmoothPath=True
     bConstantSpeed=True
     bNewRotationSmoothing=True
     Color_Path=(B=255,G=255,R=255,A=255)
     Color_SwitchNoChance=(B=204,G=204,R=178,A=255)
     Color_SwitchInstant=(B=204,R=153,A=255)
     Color_Switch=(B=229,G=178,R=127,A=255)
     StartControlPoint=(X=200.000000,Y=200.000000)
     EndControlPoint=(X=-200.000000,Y=-200.000000)
     Smoothing=1.000000
     DesiredSpeed=150.000000
     tweenTime=0.200000
}
