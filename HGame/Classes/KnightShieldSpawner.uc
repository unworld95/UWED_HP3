Class KnightShieldSpawner extends Hpgenericspawner;

defaultproperties
{
     bBlocksCamera=True
     vulnerableToClass=Class'HGame.DepulsoSpell'
     GoodieToSpawn(0)=Class'HGame.Jellybean'
     Anims=(Opening="Hit",OpeningAnimRate=1.000000,Closing="CloseLid",ClosingAnimRate=1.000000,Start="None",StartAnimRate=1.000000,End="None",EndAnimRate=1.000000)
     OpeningSnds(0)=Sound'SoundEffects.Objects.rictuarmor_hit01'
     OpeningSnds(1)=Sound'SoundEffects.Objects.rictuarmor_hit02'
     OpeningSnds(2)=Sound'SoundEffects.Objects.rictuarmor_hit03'
     Limits=(Max=6,Min=3)
     StartBone="spawnpoint"
     BaseParticles=Class'HGame.DustLarge'
     SingleParticle(0)=Class'HGame.SpawnFlashGreen'
     SingleParticle(1)=Class'HGame.SpawnFlashRed'
     SingleParticle(2)=Class'HGame.SpawnFlashGreen'
     GoodieDelay=0.200000
     Physics=PHYS_None
     Mesh=SkeletalMesh'HProps.RictuArmour'
     DrawScale=0.750000
     SoundRadius=300.000000
     SoundOcclusion=OCCLUSION_None
}
