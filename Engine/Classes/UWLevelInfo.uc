class UWLevelInfo extends LevelInfo;

var transient bool bDoneLoading;
var bool bInSpecialPauseMode;
var() bool bDefaultPhysicsVolumeIsWater;
var() string ID;
var() int AutoSaveAtLevelStartSlot;
var const Pawn PawnList;
var const Pawn SpecialPawnList;
var (GameState) String DefaultGameState;
var globalconfig int MaxRenderActorLights;
var globalconfig String InventoryCarrierClass;
var Pawn InventoryCarrierPawn;
var transient WorldInfo WorldInfo;

function bool IsSoftwareRendering(){
	return false;
}
event ServerTravel(string URL, bool bItems)
{
    local UWActor A;
    local PlayerController pc;
    if (NextURL == "") {
        bLevelChange = true;
        bNextItems = bItems;
        NextURL = URL;
        if (Game != None) {
            if (bItems) 
                foreach AllActors(class 'UWActor', A)
            A.SavePersistentData();
            foreach DynamicActors(class 'PlayerController', pc)
            break;
            if (pc != None) 
                pc.Pawn = InventoryCarrierPawn;
            Game.ProcessServerTravel(URL, bItems);
        } else 
            NextSwitchCountdown = 0;
    }
}

simulated event PreBeginPlay()
{
    local UWPawn P;
    ObjectPool = new(none) class 'ObjectPool';
    foreach AllActors(class 'UWPawn', P) {
        if (String(P.class) ~= InventoryCarrierClass) 
            {
                InventoryCarrierPawn = P;
                break;
            }
        }
    foreach AllActors(class 'UWPawn', P) { //UW Try Alternative
        if (P.bIsMainPlayer) 
            {
                PlayerHeroActor = P;
                break;
            }
        }
}
event PostLoadGame(bool bLoadFromSaveGame) {
    if (bLoadFromSaveGame) 
        ObjectPool = new(none) class 'ObjectPool';
}