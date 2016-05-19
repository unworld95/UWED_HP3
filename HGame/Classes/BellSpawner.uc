Class BellSpawner extends Hpgenericspawner;

defaultproperties
{
     vulnerableToClass=Class'HGame.DepulsoSpell'
     ClosingSound(0)=Sound'SoundEffects.Objects.bell03'
     GoodieToSpawn(0)=Class'HGame.Jellybean'
     Anims=(Opening="Ring",OpeningAnimRate=1.000000,Closing="Settle",ClosingAnimRate=1.000000,Start="None",StartAnimRate=1.000000,End="None",EndAnimRate=1.000000)
     OpeningSnds(0)=Sound'SoundEffects.Objects.bell01'
     OpeningSnds(1)=Sound'SoundEffects.Objects.bell02'
     Limits=(Max=10,Min=6)
     StartBone="spawnpoint"
     StartVelMultiplier=100.000000
     BaseParticles=Class'HGame.DustLarge'
     SingleParticle(0)=Class'HGame.SpawnFlashGreen'
     SingleParticle(1)=Class'HGame.SpawnFlashRed'
     SingleParticle(2)=Class'HGame.SpawnFlashBlue'
     GoodieDelay=0.000000
     Physics=PHYS_None
     Mesh=SkeletalMesh'HProps.CR_bell'
     SoundRadius=300.000000
     SoundOcclusion=OCCLUSION_None
     CollisionRadius=32.000000
     CollisionHeight=24.000000
}
