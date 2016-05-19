Class Scarecrow extends Hpgenericspawner;

var bool bBlocksCamera;

defaultproperties
{
     bBlocksCamera=True
     vulnerableToClass=Class'HGame.DepulsoSpell'
     SpawningSound(0)=Sound'SoundEffects.Objects.scarecrow_spin01'
     SpawningSound(1)=Sound'SoundEffects.Objects.scarecrow_spin02'
     SpawningSound(2)=Sound'SoundEffects.Objects.scarecrow_spin03'
     GoodieToSpawn(0)=Class'HGame.Jellybean'
     SpawningAnim="Hit"
     Anims=(Opening="None",OpeningAnimRate=1.000000,Closing="None",ClosingAnimRate=1.000000,Start="None",StartAnimRate=1.000000,End="HitEnd",EndAnimRate=1.000000)
     Limits=(Max=10,Min=8)
     StartPos=(Z=65.000000)
     BaseParticles=Class'HGame.DustLarge'
     SingleParticle(0)=Class'HGame.SpawnFlashGreen'
     SingleParticle(1)=Class'HGame.SpawnFlashBlue'
     SingleParticle(2)=Class'HGame.SpawnFlashViolet'
     EndSound(0)=Sound'SoundEffects.Objects.scarecrow_hit01'
     EndSound(1)=Sound'SoundEffects.Objects.scarecrow_hit02'
     EndSound(2)=Sound'SoundEffects.Objects.scarecrow_hit03'
     GoodieDelay=0.050000
     Lives=3
     Mesh=SkeletalMesh'HProps.Scarecrow'
     SoundRadius=300.000000
     SoundVolume=255
     CollisionRadius=40.000000
}
