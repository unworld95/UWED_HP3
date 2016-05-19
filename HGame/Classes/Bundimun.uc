Class Bundimun extends Creatures;

var() Class<baseSpell> spellClass;
var() float fChaseRadius;
var() float fChaseSpeed;
var() float fChaseThreasold;
var() int iRotationRate;
var() float fEvadeThreasold;
var() float fAttackAnimSpeed;
var() float fFreezeTime;
var bool bFrozen;
var() Class<HPPickup> GoodieToSpawn;
var() int GoodieCount;
var() name EventToSendOnRictusempra;
var() float fGooDamage;
var() int iGooRange;
var() float fGooRangeTweak;
var() float fGooLifetime;
var() float fTimeBetweenShots;
var() float fFallTime;
var() float fTimeToHitTarget;
var() name TargetTag;
var() name EventToSendOnBounce;
var KWPawn BouncePawn;
var Vector BouncePawnVelocity;
var BundStomp fxBundStomp;

defaultproperties
{
     spellClass=Class'HGame.BundimunSpell'
     fChaseRadius=256.000000
     fChaseSpeed=24.000000
     fChaseThreasold=384.000000
     iRotationRate=96
     fAttackAnimSpeed=1.000000
     fFreezeTime=4.000000
     GoodieToSpawn=Class'HGame.Jellybean'
     GoodieCount=3
     fGooDamage=5.000000
     iGooRange=96
     fGooRangeTweak=0.200000
     fGooLifetime=8.000000
     fTimeBetweenShots=0.750000
     fFallTime=30.000000
     fTimeToHitTarget=1.500000
     iNumHitsToBeat=1
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound0
         Name="AnimNotify_KWSound0"
     End Object
     AnimNotifys(0)=AnimNotify_KWSound'HGame.Bundimun.AnimNotify_KWSound0'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound1
         Name="AnimNotify_KWSound1"
     End Object
     AnimNotifys(1)=AnimNotify_KWSound'HGame.Bundimun.AnimNotify_KWSound1'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound2
         Name="AnimNotify_KWSound2"
     End Object
     AnimNotifys(2)=AnimNotify_KWSound'HGame.Bundimun.AnimNotify_KWSound2'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound3
         Name="AnimNotify_KWSound3"
     End Object
     AnimNotifys(3)=AnimNotify_KWSound'HGame.Bundimun.AnimNotify_KWSound3'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound4
         Name="AnimNotify_KWSound4"
     End Object
     AnimNotifys(4)=AnimNotify_KWSound'HGame.Bundimun.AnimNotify_KWSound4'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound5
         Name="AnimNotify_KWSound5"
     End Object
     AnimNotifys(5)=AnimNotify_KWSound'HGame.Bundimun.AnimNotify_KWSound5'
     vulnerableToClass=Class'HGame.RictusempraSpell_Combat'
     vSpellOffset=(X=52.000000,Z=8.000000)
     IdleAnimName="Underground"
     ControllerClass=Class'HGame.BundimunController'
     MovementAnims(0)="Attack"
     MovementAnims(1)="Attack"
     MovementAnims(2)="Attack"
     MovementAnims(3)="Attack"
     TurnLeftAnim="Attack"
     TurnRightAnim="Attack"
     bActorShadows=False
     Mesh=SkeletalMesh'HPCharacters.GreaterBundimun'
     DrawScale=1.250000
     AmbientGlow=25
     bUnlit=True
     CollisionRadius=45.000000
     CollisionHeight=12.000000
     bCollideActors=False
     bProjTarget=False
}
