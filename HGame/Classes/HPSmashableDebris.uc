Class HPSmashableDebris extends DebrisGenerator;

var(Reaction) Class<Projectile> vulnerableToClass;

defaultproperties
{
     vulnerableToClass=Class'HGame.RictusempraSpell_Combat'
     JustOnce=True
     bHidden=False
     InitialState="stateTriggerOnTouch"
     bBlockActors=False
     bBlockPlayers=False
}
