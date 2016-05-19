Class DementorDoor extends HPPawn;

var(Animations) name BustThruAnim;
var(Animations) name ShakeAnim;
var bool bIsBusted;
var(sounds) Sound SoundToPlayOnLock;
var(sounds) Sound SoundToPlayOnBust;
var(sounds) Sound SoundToPlayOnShake;
var(sounds) array<float> SoundVolumes;

defaultproperties
{
     BustThruAnim="spell"
     ShakeAnim="Shake"
     SoundVolumes(0)=1.000000
     SoundVolumes(1)=1.000000
     SoundVolumes(2)=1.000000
     SoundVolumes(3)=1.000000
     CollisionRadius=70.000000
}
