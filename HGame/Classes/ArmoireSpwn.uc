Class ArmoireSpwn extends Hpgenericspawner;

defaultproperties
{
     ClosingSound(0)=Sound'SoundEffects.Objects.spawner_armoire_close01'
     SpawningSound(0)=Sound'SoundEffects.Objects.spawner_armoire'
     GoodieToSpawn(0)=Class'HGame.Jellybean'
     SpawningAnim="Hit1"
     Anims=(Opening="None",OpeningAnimRate=1.000000,Closing="Close1",ClosingAnimRate=1.000000,Start="None",StartAnimRate=1.000000,End="Close2",EndAnimRate=1.000000)
     StartPos=(Z=0.000000)
     BaseParticles=Class'HGame.DustLarge'
     SingleParticle(0)=Class'HGame.SpawnFlashBlue'
     SingleParticle(1)=Class'HGame.SpawnFlashGreen'
     SingleParticle(2)=Class'HGame.SpawnFlashViolet'
     EndSound(0)=Sound'SoundEffects.Objects.spawner_armoire_close01'
     GoodieDelay=0.000000
     Physics=PHYS_None
     Mesh=SkeletalMesh'HProps.BeanDispenser'
     DrawScale=1.250000
     SoundRadius=500.000000
     CollisionRadius=32.000000
     CollisionHeight=55.000000
}
