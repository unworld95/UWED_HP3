//================================================================================
// Debris.
//================================================================================

class Debris extends Projectile;

var Rotator RandSpin;
var int NumBounces;
var Class<Emitter> Particles;
var Sound MySound;
var float newDrawScale;
var bool hasParticles;
var float MaxLiveTime;
var float ScaleDown;
var Range LifetimeRange;
var int VelocityMultiplier;
var Vector vDirectionalBreak;

function InitializeDebris ()
{
}

function SpawnParticles ()
{
}

auto state isFalling
{
}

defaultproperties
{
     MaxLiveTime=1.000000
     CollisionRadius=1.000000
     CollisionHeight=1.000000
     bBounce=True
}
