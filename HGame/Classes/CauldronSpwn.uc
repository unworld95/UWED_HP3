Class CauldronSpwn extends Hpgenericspawner;

defaultproperties
{
     vulnerableToClass=Class'HGame.DepulsoSpell'
     SpawningSound(0)=Sound'SoundEffects.Objects.cauldron_topple'
     GoodieToSpawn(0)=Class'HGame.Jellybean'
     SpawningAnim="HitWobbleFall"
     Anims=(Opening="None",OpeningAnimRate=1.000000,Closing="None",ClosingAnimRate=1.000000,Start="None",StartAnimRate=1.000000,End="IdleEnd",EndAnimRate=1.000000)
     Limits=(Max=6,Min=4)
     StartBone="spawnpoint"
     StartPos=(Z=0.000000)
     StartVelMultiplier=100.000000
     BaseParticles=Class'HGame.DustLarge'
     SingleParticle(0)=Class'HGame.SpawnFlashRed'
     SingleParticle(1)=Class'HGame.SpawnFlashViolet'
     SingleParticle(2)=Class'HGame.SpawnFlashBlue'
     GoodieDelay=0.100000
     Physics=PHYS_None
     Mesh=SkeletalMesh'HProps.RictuCauldron'
     DrawScale=1.250000
     SoundRadius=300.000000
     CollisionHeight=34.000000
}
