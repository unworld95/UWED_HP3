Class Hpgenericspawner extends KWgenericSpawner;

var(Sound) bool bStopSpellSound;
var bool bBlocksCamera;
var(Reaction) Class<Projectile> vulnerableToClass;

defaultproperties
{
     vulnerableToClass=Class'HGame.AlohomoraSpell'
     SingleSound(0)=Sound'SoundEffects.Magic.spawn_bean01'
     SingleSound(1)=Sound'SoundEffects.Magic.spawn_bean02'
     SingleSound(2)=Sound'SoundEffects.Magic.spawn_bean03'
     bAlignBottom=True
     bAlignBottomAlways=True
     bCanBeBaseForPawns=True
     Physics=PHYS_Falling
     Mesh=SkeletalMesh'HProps.GoldTrunk'
}
