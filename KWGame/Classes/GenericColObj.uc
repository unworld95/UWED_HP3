//================================================================================
// GenericColObj.
//================================================================================

class GenericColObj extends Actor;

var float fDamageOnTouch;
var DamageType TypeOfTouchDamage;
var bool bAlignBottom;

function Touch (Actor Other)
{
}

function Bump (Actor Other)
{
}

defaultproperties
{
     CollisionRadius=20.000000
     CollisionHeight=20.000000
}
