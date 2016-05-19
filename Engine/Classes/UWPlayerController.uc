class UWPlayerController extends PlayerController;

var int iSaveSlotID;
var string AdditionalSaveGameCommand;
var UWLevelInfo UWLevel;

event OnEnginePreFirstTick(bool bLoadFromSaveGame);
function SaveGame() {}

exec function TraceForMemStats() {
	local actor HitActor;
	local vector HitLocation,
		HitNormal;
	HitActor = Trace(HitLocation, HitNormal, pawn.location + (vect(0, 0, 1) * pawn.baseEyeHeight) + 10000.0 * vector(pawn.getViewRotation()), pawn.location + (vect(0, 0, 1) * pawn.baseEyeHeight), true);
	log("hit Actor = " $HitActor);
	if (HitActor != NONE) {
		log("class=" $HitActor.Class$ " name=" $HitActor.name);
		consoleCommand("stat setAsset class=" $HitActor.Class$ " name=" $HitActor.name);
	}
}

exec function RestartLevel() {
	//DoRestartLevel();
}
exec function RL() {
	RestartLevel();
}

function ShowInGameMenuOptions() {}
function ShowInGameMenuControls() {}
function ShowInGameMenuPosters() {}
function ShowInGameMenuYesNo() {}
function ShowReturnToFEYesNo() {}
function ShowGenericMenu(string MenuName) {}
function ShowGenericMenuNoPause(string MenuName) {}