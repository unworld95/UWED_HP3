//=============================================================================
// RTGameInfo
//=============================================================================

class RTGameInfo extends GameInfo;

//
// Called after a successful login. This is the first place
// it is safe to call replicated functions on the PlayerPawn.
//
// Mostly copied from GameInfo's PostLogin function
//
event PostLogin( PlayerController NewPlayer )
{
    local class<HUD> HudClass;
    local class<Scoreboard> ScoreboardClass;
    local String SongName;

    // Log player's login.
	if (GameStats!=None)
	{
		GameStats.ConnectEvent(NewPlayer.PlayerReplicationInfo);
		GameStats.GameEvent("NameChange",NewPlayer.PlayerReplicationInfo.playername,NewPlayer.PlayerReplicationInfo);		
	}

	if ( !bDelayedStart && NewPlayer.Pawn == None ) // Changed by Demiurge (Runtime)
	{
		// start match, or let player enter, immediately
		bRestartLevel = false;	// let player spawn once in levels that must be restarted after every death
		bKeepSamePlayerStart = true;
		if ( bWaitingToStartMatch )
			StartMatch();
		else
			RestartPlayer(newPlayer);
		bKeepSamePlayerStart = false;
		bRestartLevel = Default.bRestartLevel;
	}

	// Start player's music.
    SongName = Level.Song;
    if( SongName != "" && SongName != "None" )
        NewPlayer.ClientSetMusic( SongName, MTRAN_Fade );
	
	// tell client what hud and scoreboard to use

    if( HUDType != "" )
        HudClass = class<HUD>(DynamicLoadObject(HUDType, class'Class'));

    if( ScoreBoardType != "" )
        ScoreboardClass = class<Scoreboard>(DynamicLoadObject(ScoreBoardType, class'Class'));
    NewPlayer.ClientSetHUD( HudClass, ScoreboardClass );

	if ( NewPlayer.Pawn != None )
		NewPlayer.Pawn.ClientSetRotation(NewPlayer.Pawn.Rotation);
}

defaultproperties
{
     HUDType="Runtime.RTHUD"
     PlayerControllerClassName="Runtime.RTPlayerController"
}
