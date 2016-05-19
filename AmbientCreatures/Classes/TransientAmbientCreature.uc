//================================================================================
// TransientAmbientCreature.
//================================================================================

class TransientAmbientCreature extends AIController;

var AmbientCreatureManager MyManager;
var TransientAmbientCreature NextCreature;
var Class<Pawn> PawnTypes[8];
var Class<TransientAmbientCreature> PredatorType;
var Class<TransientAmbientCreature> AltPredatorType;
var Class<TransientAmbientCreature> UnderWaterType;
var float MinSpawnDist;
var float MaxSpawnDist;
var bool bOffCameraSpawns;
var bool bUnderWaterCreatures;
var Class<Pawn> PickedClass;
var TransientAmbientCreature Prey;
var float FlockRadius;
var int NumSlaves;
var TransientAmbientCreature Replacement;


defaultproperties
{
    UnderWaterType=Class'FishSchool'
    MinSpawnDist=500.00
    MaxSpawnDist=3000.00
    bOffCameraSpawns=True
    FlockRadius=200.00
    RemoteRole=0
}