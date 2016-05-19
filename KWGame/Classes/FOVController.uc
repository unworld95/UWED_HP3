//================================================================================
// FOVController.
//================================================================================

class FOVController extends Actor;

var() float FOVTime;
var() float FOVEnd;
var float FOVStart;
var float CurTime;
var int CurTimeInt;
var PlayerController Player;
var bool bEaseTo;

event BeginPlay ()
{
}

auto state stateUpdateFOV
{
}

defaultproperties
{
     FOVEnd=90.000000
     bHidden=True
}
