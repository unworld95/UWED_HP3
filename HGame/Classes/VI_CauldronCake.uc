Class VI_CauldronCake extends VendorItem;

var float LastCheckTime;
const DESTROY_CHECK_INTERVAL= 1.0;

defaultproperties
{
     cost=50
     GameStateAvailable=70
     DrawType=DT_StaticMesh
     StaticMesh=StaticMesh'HP3_GamePlay_sm.Spells_Objects.CauldronCake_SM'
     CollisionRadius=32.000000
     CollisionHeight=20.000000
}
