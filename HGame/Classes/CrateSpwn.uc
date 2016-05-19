Class CrateSpwn extends Hpgenericspawner;

defaultproperties
{
     vulnerableToClass=Class'HGame.RictusempraSpell'
     GoodieToSpawn(0)=Class'HGame.Jellybean'
     Anims=(Opening="Break",OpeningAnimRate=1.000000,Closing="None",ClosingAnimRate=1.000000,Start="Idle",StartAnimRate=1.000000,End="IdleBroken",EndAnimRate=1.000000)
     OpeningSnds(0)=Sound'SoundEffects.Objects.spawner_crate'
     Limits=(Max=8,Min=4)
     StartPos=(X=10.000000,Z=-20.000000)
     StartVelMultiplier=100.000000
     SingleParticle(0)=Class'HGame.SpawnFlashViolet'
     SingleParticle(1)=Class'HGame.SpawnFlashBlue'
     SingleParticle(2)=Class'HGame.SpawnFlashGreen'
     Physics=PHYS_None
     Mesh=SkeletalMesh'HProps.RictuCrate'
     DrawScale=1.250000
     AmbientGlow=20
     SoundRadius=500.000000
     CollisionRadius=40.000000
     CollisionHeight=40.000000
}
