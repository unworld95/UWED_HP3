//================================================================================
// KWDemoRecSpectator.
//================================================================================

class KWDemoRecSpectator extends DemoRecSpectator
  Config(User);

event PostBeginPlay ()
{
}

function InitPlayerReplicationInfo ()
{
}

exec function ViewClass (Class<Actor> aClass, optional bool bQuiet, optional bool bCheat)
{
}

exec function DemoViewNextPlayer ()
{
}

auto state Spectating
{
}

event PlayerCalcView (out Actor ViewActor, out Vector CameraLocation, out Rotator CameraRotation)
{
}

defaultproperties
{
}
