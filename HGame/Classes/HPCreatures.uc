Class HPCreatures extends Creatures;

var() Class<baseSpell> AttackSpellClass;
var() float fTimeForSpellToHitTarget;
//var(Animation) int DefaultAnimChannel;

defaultproperties
{
     fTimeForSpellToHitTarget=0.750000
     fAttackAccuracy=1.000000
     DefaultTriggerState="DefaultState"
     ThingsIHate(0)=Class'HGame.HPHeroPawn'
     InitialState="Idle"
}
