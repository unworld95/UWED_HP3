//=============================================================================
// Movie.uc: A movie that plays on a surface be that a texture or the canvas
//
// Created by Demiurge Studios 2002
//
// This is a built-in Unreal class and it shouldn't be modified.
//=============================================================================
class Movie extends Object
	native
	noexport;

var const transient int FMovie; //this is really an FMovie*
var HUD HudParent;

event MovieEnded()
{	
	HudParent.RelayMovieTrigger();
}

defaultproperties
{
}
