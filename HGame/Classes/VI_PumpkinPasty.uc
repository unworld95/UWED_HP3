Class VI_PumpkinPasty extends VendorItem;

var float LastCheckTime;
const DESTROY_CHECK_INTERVAL= 1.0;

defaultproperties
{
     cost=30
     GameStateAvailable=70
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'HP3_GamePlay_sm.Spells_Objects.PumpkinPasty_SM'
     CollisionRadius=32.000000
     CollisionHeight=20.000000
}
