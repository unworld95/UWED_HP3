Class Harry extends HPHeroPawn;

var travel bool bSaidVendorInstructions;
var travel string PlayerObjectiveDialogTag;
var int HudItemUp[3];
var int TimeSinceLastReminder;
//var() string Label;

defaultproperties
{
     TimeSinceLastReminder=15
     RictusempraSounds_Talk_String(0)="PC_hry_SpellCasting_38"
     RictusempraSounds_Talk_String(1)="PC_hry_SpellCasting_39"
     RictusempraSounds_Talk_String(2)="PC_hry_SpellCasting_37"
     AlohomoraSounds_Talk_String(0)="PC_hry_SpellCasting_43"
     LumosSounds_Talk_String(0)="PC_hry_SpellCasting_34"
     LumosSounds_Talk_String(1)="PC_hry_SpellCasting_35"
     LumosSounds_Talk_String(2)="PC_hry_SpellCasting_36"
     GlaciusSounds_Talk_String(0)="PC_hry_SpellCasting_47"
     GlaciusSounds_Talk_String(2)="PC_hry_SpellCasting_49"
     RetractumSounds_Talk_String(0)="PC_hry_SpellCasting_50"
     RetractumSounds_Talk_String(1)="PC_hry_SpellCasting_51"
     RetractumSounds_Talk_String(2)="PC_hry_SpellCasting_52"
     DiffendoSounds_Talk_String(0)="PC_hry_SpellCasting_40"
     DiffendoSounds_Talk_String(1)="PC_hry_SpellCasting_41"
     DiffendoSounds_Talk_String(2)="PC_hry_SpellCasting_42"
     PatronumSounds_Talk_String(0)="PC_hry_SpellCasting_53"
     LapiforsSounds_Talk_String(0)="PC_hry_SpellCasting_56"
     LapiforsSounds_Talk_String(1)="PC_hry_SpellCasting_57"
     LapiforsSounds_Talk_String(2)="PC_hry_SpellCasting_58"
     SpongifySounds_Talk_String(0)="PC_hry_SpellCasting_59"
     DepulsoSounds_Talk_String(0)="PC_hry_SpellCasting_178"
     DepulsoSounds_Talk_String(1)="PC_hry_SpellCasting_180"
     DepulsoSounds_Talk_String(2)="PC_hry_SpellCasting_182"
     VerdSounds_Talk_String(0)="PC_hry_SpellCasting_62"
     VerdSounds_Talk_String(1)="PC_hry_SpellCasting_63"
     VerdSounds_Talk_String(2)="PC_hry_SpellCasting_64"
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound0
         Name="AnimNotify_KWSound0"
     End Object
     AnimNotifys(0)=AnimNotify_KWSound'HGame.Harry.AnimNotify_KWSound0'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound1
         Name="AnimNotify_KWSound1"
     End Object
     AnimNotifys(1)=AnimNotify_KWSound'HGame.Harry.AnimNotify_KWSound1'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound2
         Name="AnimNotify_KWSound2"
     End Object
     AnimNotifys(2)=AnimNotify_KWSound'HGame.Harry.AnimNotify_KWSound2'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound3
         Name="AnimNotify_KWSound3"
     End Object
     AnimNotifys(3)=AnimNotify_KWSound'HGame.Harry.AnimNotify_KWSound3'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound4
         Name="AnimNotify_KWSound4"
     End Object
     AnimNotifys(4)=AnimNotify_KWSound'HGame.Harry.AnimNotify_KWSound4'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound5
         Name="AnimNotify_KWSound5"
     End Object
     AnimNotifys(5)=AnimNotify_KWSound'HGame.Harry.AnimNotify_KWSound5'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound6
         Name="AnimNotify_KWSound6"
     End Object
     AnimNotifys(6)=AnimNotify_KWSound'HGame.Harry.AnimNotify_KWSound6'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound7
         Name="AnimNotify_KWSound7"
     End Object
     AnimNotifys(7)=AnimNotify_KWSound'HGame.Harry.AnimNotify_KWSound7'
     bIsMainPlayer=True
     Label="Harry"
     BumpLineSetPrefix="hry"
     OffEdgeOfTrackEmotes(0)="pc_hry_HryEmotes_19"
     OffEdgeOfTrackEmotes(1)="pc_hry_HryEmotes_17"
     OffEdgeOfTrackEmotes(2)="pc_hry_HryEmotes_15"
     RequiredEquipment(0)="HGame.HarryWand"
     LandGrunts_String(0)="pc_hry_HryEmotes_21"
     LandGrunts_String(1)="pc_hry_HryEmotes_23"
     LandGrunts_String(2)="pc_hry_HryEmotes_25"
     JumpSounds_String(0)="pc_hry_HryEmotes_31"
     JumpSounds_String(1)="pc_hry_HryEmotes_33"
     JumpSounds_String(2)="pc_hry_HryEmotes_35"
     HurtSounds_String(0)="PC_HRY_COMPCOMMTSHRY_23"
     HurtSounds_String(1)="PC_HRY_COMPCOMMTSHRY_24"
     HurtSounds_String(2)="PC_HRY_COMPCOMMTSHRY_25"
     HurtSounds_String(3)="PC_HRY_COMPCOMMTSHRY_14"
     HurtSounds_String(4)="PC_HRY_COMPCOMMTSHRY_15"
     LandingStone(0)=Sound'SoundEffects.Movement.land_stone01'
     LandingStone(1)=Sound'SoundEffects.Movement.land_stone02'
     LandingStone(2)=Sound'SoundEffects.Movement.land_stone03'
     LandingRug(0)=Sound'SoundEffects.Movement.footstep_har_carpet01_walk'
     LandingRug(1)=Sound'SoundEffects.Movement.footstep_har_carpet02_walk'
     LandingRug(2)=Sound'SoundEffects.Movement.footstep_har_carpet03_walk'
     LandingWood(0)=Sound'SoundEffects.Movement.land_wood01'
     LandingWood(1)=Sound'SoundEffects.Movement.land_wood02'
     LandingWood(2)=Sound'SoundEffects.Movement.land_wood03'
     LandingWet(0)=Sound'SoundEffects.Movement.footstep_har_water01'
     LandingWet(1)=Sound'SoundEffects.Movement.footstep_har_water02'
     LandingWet(2)=Sound'SoundEffects.Movement.footstep_har_water03'
     LandingGrass(0)=Sound'SoundEffects.Movement.land_grass01'
     LandingGrass(1)=Sound'SoundEffects.Movement.land_grass02'
     LandingGrass(2)=Sound'SoundEffects.Movement.land_grass03'
     LandingMetal(0)=Sound'SoundEffects.Movement.land_metal01'
     LandingMetal(1)=Sound'SoundEffects.Movement.land_metal02'
     LandingMetal(2)=Sound'SoundEffects.Movement.land_metal03'
     LandingSnow(0)=Sound'SoundEffects.Movement.footstep_har_ice01'
     LandingSnow(1)=Sound'SoundEffects.Movement.footstep_har_ice02'
     LandingSnow(2)=Sound'SoundEffects.Movement.footstep_har_ice03'
     LandingNone(0)=Sound'SoundEffects.Movement.land_stone01'
     LandingNone(1)=Sound'SoundEffects.Movement.land_stone02'
     LandingNone(2)=Sound'SoundEffects.Movement.land_stone03'
     FootstepsStone(0)=Sound'SoundEffects.Movement.footstep_har_stone01_walk_reverb'
     FootstepsStone(1)=Sound'SoundEffects.Movement.footstep_har_stone02_walk_reverb'
     FootstepsStone(2)=Sound'SoundEffects.Movement.footstep_har_stone03_walk_reverb'
     FootstepsStone(3)=Sound'SoundEffects.Movement.footstep_har_stone04_walk_reverb'
     FootstepsRug(0)=Sound'SoundEffects.Movement.footstep_har_carpet01'
     FootstepsRug(1)=Sound'SoundEffects.Movement.footstep_har_carpet02'
     FootstepsRug(2)=Sound'SoundEffects.Movement.footstep_har_carpet03'
     FootstepsWood(0)=Sound'SoundEffects.Movement.footstep_har_wood01_reverb'
     FootstepsWood(1)=Sound'SoundEffects.Movement.footstep_har_wood02_reverb'
     FootstepsWood(2)=Sound'SoundEffects.Movement.footstep_har_wood03_reverb'
     FootstepsWood(3)=Sound'SoundEffects.Movement.footstep_har_wood04_reverb'
     FootstepsWet(0)=Sound'SoundEffects.Movement.footstep_har_water01'
     FootstepsWet(1)=Sound'SoundEffects.Movement.footstep_har_water02'
     FootstepsWet(2)=Sound'SoundEffects.Movement.footstep_har_water03'
     FootstepsGrass(0)=Sound'SoundEffects.Movement.footstep_har_grass01'
     FootstepsGrass(1)=Sound'SoundEffects.Movement.footstep_har_grass02'
     FootstepsGrass(2)=Sound'SoundEffects.Movement.footstep_har_grass03'
     FootstepsMetal(0)=Sound'SoundEffects.Movement.footstep_har_metal01'
     FootstepsMetal(1)=Sound'SoundEffects.Movement.footstep_har_metal02'
     FootstepsMetal(2)=Sound'SoundEffects.Movement.footstep_har_metal03'
     FootstepsSnow(0)=Sound'SoundEffects.Movement.footstep_har_ice01'
     FootstepsSnow(1)=Sound'SoundEffects.Movement.footstep_har_ice02'
     FootstepsSnow(2)=Sound'SoundEffects.Movement.footstep_har_ice03'
     FootstepsNone(0)=Sound'SoundEffects.Movement.footstep_har_stone01_walk_reverb'
     FootstepsNone(1)=Sound'SoundEffects.Movement.footstep_har_stone02_walk_reverb'
     FootstepsNone(2)=Sound'SoundEffects.Movement.footstep_har_stone03_walk_reverb'
     FootFramesWalk(0)=1
     FootFramesWalk(1)=12
     FootFramesWalk(2)=24
     FootFramesWalk(3)=36
     FootFramesRun(0)=1
     FootFramesRun(1)=7
     FootFramesCarry(0)=1
     FootFramesCarry(1)=12
     FootFramesCarry(2)=24
     FootFramesCarry(3)=36
     IdleAnims(0)="FidgetKickDirt"
     IdleAnims(1)="FidgetLegPat"
     IdleAnims(2)="FidgetLookAround"
     IdleAnims(3)="FidgetLookBackLeft"
     IdleAnims(4)="FidgetShiftWeight"
     IdleAnims(5)="FidgetNod"
     IdleAnims(6)="FidgetPant"
     IdleAnims(7)="FidgetScratchScar"
     IdleDialogAnims(0)=(AnimName="FidgetScratchHead",Text="Dialog comment 1")
     IdleDialogAnims(1)=(AnimName="FidgetShakeHead",Text="Dialog comment 2")
     IdleDialogAnims(2)=(AnimName="FidgetShrug",Text="Dialog comment 3")
     IdleDialogAnims(3)=(AnimName="FidgetStrafe",Text="Dialog comment 3")
     IdleDialogAnims(4)=(AnimName="FidgetStrafe",Text="Dialog comment 3")
     IdleDialogAnims(5)=(AnimName="FidgetStretch",Text="Dialog comment 3")
     IdleDialogAnims(6)=(AnimName="FidgetTalk",Text="Dialog comment 3")
     IdleDialogAnims(7)=(AnimName="FidgetWandSwish",Text="Dialog comment 3")
     Mesh=SkeletalMesh'HPCharacters_32.Harry'
}
