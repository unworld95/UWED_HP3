Class FlyingBook extends Poxie;

defaultproperties
{
     FlyOutOfObjectTimeMin=0.500000
     FlyOutOfObjectTimeMax=0.750000
     DelayBeforeShowingLow=0.250000
     DelayBeforeShowingHigh=0.750000
     ThrowAnimFrame=0.366600
     ThrowProjAnimName="Attack"
     MoveStartAnimName="Idle"
     MoveLoopAnimName="Idle"
     RocksTrailEmitterClass=Class'HGame.FlyingBookProjectile'
     RocksBurstEmitterClass=Class'HGame.FlyingBookProjectileExplode'
     PoxieTrailEmitterClass=Class'HGame.FlyingBookTrail'
     PoxieBurstEmitterClass=Class'HGame.FlyingBookExplode'
     clsGoodieTypeToSpawn=None
     vulnerableToClass=Class'HGame.DepulsoSpell'
     IdleAnimName="Idle"
     Mesh=SkeletalMesh'HPCharacters.FlyingBook'
}
