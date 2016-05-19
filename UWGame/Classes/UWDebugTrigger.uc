class UWDebugTrigger extends UWTrigger placeable;

#EXEC TEXTURE IMPORT FILE=Textures\UWDebugTrigger.bmp Name=UWDebugTrigger MASKED=1

var bool bInitiallyActive;
var() bool bShowFPS;


function UNW_NIGHTMODE(){

	local Light A;
	
	ConsoleCommand("flush");
	
	ForEach AllActors(class'Light', A){
		LightBrightness=55;
		LightHue=255;
		LightSaturation=127;
	}
	
	ConsoleCommand("flush");
}

function UW_Ghost(){
	//local Object UWCheat;
	//UWCheat = new class'CheatManager';
	//UWCheat.Ghost();
}

exec function UW_NightMode(){
	local Light A;
	ForEach AllActors(class'Light', A){
		LightBrightness=55;
		LightHue=255;
		LightSaturation=127;
	}
	ConsoleCommand("flush");
}

function PostBeginPlay(){
	Super.PostBeginPlay();
	Class'KWVersion'.Default.bDebugEnabled = True;
	UNW_NIGHTMODE();
	//UW_Ghost();
	
	if(bShowFPS == True){
		ConsoleCommand("stat fps");
		ConsoleCommand("ghost");
	}
}

defaultproperties{
	Texture=Texture'UWDebugTrigger'
	bInitiallyActive=true
}