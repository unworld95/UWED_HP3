//================================================================================
// TransientAmbientPawn.
//================================================================================

class TransientAmbientPawn extends AmbientPawn
  Abstract
  NotPlaceable
  Config(User);

var bool bFlyer;
var bool bSwimmer;
var bool bDestroySoon;
var bool bPermanent;
var TransientAmbientPawn NextSlave;
var float SleepTime;

defaultproperties
{
    SleepTime=2.00
    bLOSHearing=False
    RemoteRole=0
    bUnlit=True
    CollisionRadius=0.00
    CollisionHeight=0.00
    bCollideActors=False
    bBlockActors=False
    bBlockPlayers=False
    bProjTarget=False
}