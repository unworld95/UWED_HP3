//================================================================================
// CutFactory.
//================================================================================

class CutFactory extends Keypoint;

var() string LevelSequencesFilename;
var() bool bAlterPlayerPawnState;
var bool bUseOldCutscenes;
var bool bFinishedManufacturing;

static function GetCutFactory ()
{
}

function OnTravelPostAccept ()
{
}

event PostBeginPlay ()
{
}

function SendPlayerStartEvent ()
{
}

auto state Manufacturing
{
}

exec function BypassCutscene ()
{
}

function int InStrAfter (string Text, string Match, int pos)
{
  return -1;
}

function CLog (string Str)
{
}

function CreateDynamicCutscenes ()
{
}

defaultproperties
{
     bAlterPlayerPawnState=True
     bStatic=False
     Texture=Texture'Engine.S_ClipMarker'
}
