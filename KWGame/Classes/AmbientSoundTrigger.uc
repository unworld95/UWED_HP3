//================================================================================
// AmbientSoundTrigger.
//================================================================================

class AmbientSoundTrigger extends Trigger;

var() Sound snd[8];
var() Range Volume[8];
var() Range Pitch[8];
var() Vector direction[8];
var() Range RepeatTime[8];
var() Range fromCamera;
var bool bShutUp;
var bool bIsActive;
var int HowManySounds;
var float fCurrTime[8];
var KWSpeaker Speaker[8];
var() bool bOneSoundInARow;

enum ESoundDir {
  SD_Random,
  SD_Front,
  SD_Back,
  SD_Right,
  SD_Left,
  SD_Directional
};

const MAX_SOUNDS= 8;

function PostBeginPlay ()
{
  Super.PostBeginPlay();
}

function Setup ()
{
}

auto state() StateStartup extends NormalTrigger
{
}

event Trigger (Actor Other, Pawn EventInstigator)
{
}

function SetRandomLocation (int SoundIndex)
{
}

function Tick (float t)
{
}

function Activate (Actor Other, Pawn Instigator)
{
}

function Deactivate (Actor Other, Pawn Instigator)
{
}

defaultproperties
{
     Volume(0)=(Min=-107553168.000000)
     Volume(1)=(Min=-107553168.000000)
     Volume(2)=(Min=-107553168.000000)
     Volume(3)=(Min=-107553168.000000)
     Volume(4)=(Min=-107553168.000000)
     Volume(5)=(Min=-107553168.000000)
     Volume(6)=(Min=-107553168.000000)
     Volume(7)=(Min=-107553168.000000)
     InitialState="StateStartup"
     Texture=Texture'KWGame.AmbientSoundTrig'
}
