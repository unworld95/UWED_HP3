class UWExpTrigger extends UWTrigger;

function Touch( actor Other ){
	Spawn(Class'Jellybean');
	Spawn(Class'Harry');
}

defaultproperties{
	bHidden=False
	Texture=Texture'UWGame.UWDebugTrigger'
}