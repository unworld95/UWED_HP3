class UWHarry extends Harry placeable;

var(sounds) array<string> UWFlipendoSounds_Talk_String;
var() float opacity;

function SetOpacity(float NewOpacity){
}

function PreBeginPlay(){
	SetOpacity(0.3);
}


function PostBeginPlay(){
	SetOpacity(0.3);
}

defaultproperties
{
     UWFlipendoSounds_Talk_String(0)="castFlipendo"
}
