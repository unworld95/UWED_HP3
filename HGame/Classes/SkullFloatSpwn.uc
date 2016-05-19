Class SkullFloatSpwn extends Hpgenericspawner;

defaultproperties
{
     vulnerableToClass=Class'HGame.DepulsoSpell'
     SpawningSound(0)=Sound'SoundEffects.Objects.skull_hitair'
     GoodieToSpawn(0)=Class'HGame.Jellybean'
     SpawningAnim="HitAir"
     Anims=(Opening="None",OpeningAnimRate=1.000000,Closing="None",ClosingAnimRate=1.000000,Start="IdleAir",StartAnimRate=1.000000,End="None",EndAnimRate=1.000000)
     OpeningSnds(0)=Sound'SoundEffects.Objects.chest_magic_open01'
     OpeningSnds(1)=Sound'SoundEffects.Objects.chest_magic_open02'
     OpeningSnds(2)=Sound'SoundEffects.Objects.chest_magic_open03'
     Limits=(Max=4,Min=4)
     StartBone="Spawn"
     StartPos=(Z=0.000000)
     BaseParticles=Class'HGame.Dustsmall'
     SingleParticle(0)=Class'HGame.SpawnFlashGreen'
     SingleParticle(1)=Class'HGame.SpawnFlashRed'
     SingleParticle(2)=Class'HGame.SpawnFlashViolet'
     GoodieDelay=0.400000
     Physics=PHYS_None
     Mesh=SkeletalMesh'HProps.CacklingSkull'
     DrawScale=1.250000
     SoundRadius=300.000000
     CollisionRadius=16.000000
     CollisionHeight=16.000000
}
