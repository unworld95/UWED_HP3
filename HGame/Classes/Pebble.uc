Class Pebble extends HPProps;

var bool bGaveDamage;
var Emitter pEmitter;
var Class<Emitter> PebbleBurstEmitterClass;

defaultproperties
{
     Damage=20.000000
     Physics=PHYS_Falling
     bHidden=True
     LifeSpan=5.000000
     CollisionRadius=1.000000
     CollisionHeight=1.000000
}
