Class SkullShelfSpwn extends Hpgenericspawner;

defaultproperties
{
     vulnerableToClass=Class'HGame.DepulsoSpell'
     SpawningSound(0)=Sound'SoundEffects.Objects.skull_hitair'
     GoodieToSpawn(0)=Class'HGame.Jellybean'
     SpawningAnim="Hit1"
     Anims=(Opening="None",OpeningAnimRate=1.000000,Closing="None",ClosingAnimRate=1.000000,Start="Idle",StartAnimRate=1.000000,End="HitEnd",EndAnimRate=1.000000)
     Limits=(Max=1,Min=1)
     StartBone="Spawn"
     StartPos=(X=20.000000,Z=50.000000)
     BaseParticles=Class'HGame.Dustsmall'
     SingleParticle(0)=Class'HGame.SpawnFlashBlue'
     SingleParticle(1)=Class'HGame.SpawnFlashGreen'
     SingleParticle(2)=Class'HGame.SpawnFlashViolet'
     EndSound(0)=Sound'SoundEffects.Objects.skull_hitend'
     Physics=PHYS_None
     Mesh=SkeletalMesh'HProps.CacklingSkull'
     Rotation=(Pitch=3888)
     DrawScale=1.250000
     SoundRadius=300.000000
     CollisionRadius=16.000000
     CollisionHeight=16.000000
}
