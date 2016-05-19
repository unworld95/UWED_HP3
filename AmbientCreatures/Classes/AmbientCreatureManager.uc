//================================================================================
// AmbientCreatureManager.
//================================================================================

class AmbientCreatureManager extends Info Placeable;

#exec Texture Import File=Texture\S_AmbCreature.tga Name=S_AmbCreature Mips=Off

var TransientAmbientCreature MyCreatures;
var int NumCreatures;
var() int MaxCreatures;
var() Class<TransientAmbientCreature> TransientCreatures[8];
var int NumClasses;
var PlayerController LocalPlayer;
var() int SpawnRadius;
var() int TriggerRadius;
var TransientAmbientCreature Prey;

defaultproperties
{
    MaxCreatures=10
    SpawnRadius=6000
    TriggerRadius=8000
    Texture=Texture'S_AmbCreature'
}