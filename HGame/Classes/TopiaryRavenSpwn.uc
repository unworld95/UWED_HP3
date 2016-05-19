Class TopiaryRavenSpwn extends Hpgenericspawner;

defaultproperties
{
     bBlocksCamera=True
     vulnerableToClass=Class'HGame.DepulsoSpell'
     SpawningSound(0)=Sound'SoundEffects.Objects.topiary_raven'
     GoodieToSpawn(0)=Class'HGame.Jellybean'
     SpawningAnim="Hit"
     Emitts=(Spawning=Class'HGame.LeavesBurst',StartPos=(Z=30.000000))
     Anims=(Opening="None",OpeningAnimRate=1.000000,Closing="None",ClosingAnimRate=1.000000,Start="None",StartAnimRate=1.000000,End="None",EndAnimRate=1.000000)
     Limits=(Max=7,Min=4)
     StartPos=(Z=30.000000)
     StartVelMultiplier=120.000000
     SingleParticle(0)=Class'HGame.SpawnFlashBlue'
     SingleParticle(1)=Class'HGame.SpawnFlashRed'
     SingleParticle(2)=Class'HGame.SpawnFlashViolet'
     Physics=PHYS_None
     bLightChanged=True
     Mesh=SkeletalMesh'HProps.TopiaryRaven'
     AmbientGlow=20
     CollisionRadius=64.000000
     CollisionHeight=90.000000
     ColLocation=(X=91.494255,Y=1282.324463,Z=94.000000)
}
