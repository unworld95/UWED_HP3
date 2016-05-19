//================================================================================
// DebrisGenerator.
//================================================================================

class DebrisGenerator extends KWPawn
  Config(User);

const DEFAULT_VELOCITY= 250;
const NUM_ENTRIES= 8;  

struct DebrisParams
{
  var() StaticMesh aStaticMesh;
  var() Class<Emitter> bParticles;
  var() Sound cSound;
  var() float DrawScale;
  var() bool hasParticles;
  var() Range LifetimeRange;
  var() int Velocity;
};

var() DebrisParams HitDebris;
var() DebrisParams BaseDebris[8];
var() bool JustOnce;
var() int NumDebris;
var() float LowScale;
var() float WaitingTime;
var float ScaleDown;
var int NumMeshs;
var() bool bDirectionalBreak;

function PostBeginPlay ()
{
}

function StaticMesh GetRandomStaticMesh (int Index)
{
  local StaticMesh lStaticMesh;
  return lStaticMesh;
}

function GenerateDebris ()
{
}

state() TriggerOpenTimed
{
}

function Disintegrate (Vector start_locn, Rotator dirn)
{
}

defaultproperties
{
     NumDebris=20
     LowScale=1.000000
     WaitingTime=1.000000
     bHidden=True
     InitialState="TriggerOpenTimed"
}
