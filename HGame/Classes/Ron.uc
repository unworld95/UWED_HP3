Class Ron extends HPHeroPawn;

var(Dialog) bool bDoRemindForCRHang;

defaultproperties
{
     RictusempraSounds_Talk_String(0)="pc_ron_SpellCasting_71"
     RictusempraSounds_Talk_String(1)="pc_ron_SpellCasting_72"
     AlohomoraSounds_Talk_String(0)="pc_ron_SpellCasting_77"
     AlohomoraSounds_Talk_String(1)="pc_ron_SpellCasting_78"
     AlohomoraSounds_Talk_String(2)="pc_ron_SpellCasting_79"
     LumosSounds_Talk_String(0)="pc_ron_SpellCasting_68"
     LumosSounds_Talk_String(1)="pc_ron_SpellCasting_69"
     LumosSounds_Talk_String(2)="pc_ron_SpellCasting_70"
     GlaciusSounds_Talk_String(0)="PC_hry_SpellCasting_47"
     GlaciusSounds_Talk_String(1)="PC_hry_SpellCasting_48"
     GlaciusSounds_Talk_String(2)="PC_hry_SpellCasting_49"
     RetractumSounds_Talk_String(0)="pc_ron_SpellCasting_83"
     RetractumSounds_Talk_String(1)="pc_ron_SpellCasting_84"
     RetractumSounds_Talk_String(2)="pc_ron_SpellCasting_85"
     DiffendoSounds_Talk_String(0)="PC_hry_SpellCasting_40"
     DiffendoSounds_Talk_String(1)="PC_hry_SpellCasting_41"
     DiffendoSounds_Talk_String(2)="PC_hry_SpellCasting_42"
     PatronumSounds_Talk_String(0)="PC_hry_SpellCasting_53"
     PatronumSounds_Talk_String(1)="PC_hry_SpellCasting_54"
     PatronumSounds_Talk_String(2)="PC_hry_SpellCasting_55"
     SpongifySounds_Talk_String(0)="pc_ron_SpellCasting_89"
     SpongifySounds_Talk_String(1)="pc_ron_SpellCasting_90"
     SpongifySounds_Talk_String(2)="pc_ron_SpellCasting_91"
     DepulsoSounds_Talk_String(0)="pc_ron_SpellCasting_186"
     DepulsoSounds_Talk_String(1)="pc_ron_SpellCasting_73"
     DepulsoSounds_Talk_String(2)="pc_ron_SpellCasting_190"
     VerdSounds_Talk_String(0)="PC_hry_SpellCasting_62"
     VerdSounds_Talk_String(1)="PC_hry_SpellCasting_63"
     VerdSounds_Talk_String(2)="PC_hry_SpellCasting_64"
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound0
         Name="AnimNotify_KWSound0"
     End Object
     AnimNotifys(0)=AnimNotify_KWSound'HGame.Ron.AnimNotify_KWSound0'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound1
         Name="AnimNotify_KWSound1"
     End Object
     AnimNotifys(1)=AnimNotify_KWSound'HGame.Ron.AnimNotify_KWSound1'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound2
         Name="AnimNotify_KWSound2"
     End Object
     AnimNotifys(2)=AnimNotify_KWSound'HGame.Ron.AnimNotify_KWSound2'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound3
         Name="AnimNotify_KWSound3"
     End Object
     AnimNotifys(3)=AnimNotify_KWSound'HGame.Ron.AnimNotify_KWSound3'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound4
         Name="AnimNotify_KWSound4"
     End Object
     AnimNotifys(4)=AnimNotify_KWSound'HGame.Ron.AnimNotify_KWSound4'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound5
         Name="AnimNotify_KWSound5"
     End Object
     AnimNotifys(5)=AnimNotify_KWSound'HGame.Ron.AnimNotify_KWSound5'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound6
         Name="AnimNotify_KWSound6"
     End Object
     AnimNotifys(6)=AnimNotify_KWSound'HGame.Ron.AnimNotify_KWSound6'
     Begin Object Class=AnimNotify_KWSound Name=AnimNotify_KWSound7
         Name="AnimNotify_KWSound7"
     End Object
     AnimNotifys(7)=AnimNotify_KWSound'HGame.Ron.AnimNotify_KWSound7'
     Label="Ron"
     BumpLineSetPrefix="Ron"
     OffEdgeOfTrackEmotes(0)="pc_hry_HryEmotes_19"
     OffEdgeOfTrackEmotes(1)="pc_hry_HryEmotes_17"
     OffEdgeOfTrackEmotes(2)="pc_hry_HryEmotes_15"
     RequiredEquipment(0)="HGame.RonWand"
     LandGrunts_String(0)="pc_ron_RonEmotes_9"
     LandGrunts_String(1)="pc_ron_RonEmotes_10"
     LandGrunts_String(2)="pc_ron_RonEmotes_11"
     JumpSounds_String(0)="pc_ron_RonEmotes_13"
     JumpSounds_String(1)="pc_ron_RonEmotes_14"
     JumpSounds_String(2)="pc_ron_RonEmotes_15"
     HurtSounds_String(0)="PC_RON_COMPCOMMTS2_183"
     HurtSounds_String(1)="PC_RON_COMPCOMMTS2_211"
     HurtSounds_String(2)="PC_RON_COMPCOMMTS2_212"
     HurtSounds_String(3)="PC_RON_EMOTE_7"
     LandingStone(0)=Sound'SoundEffects.Movement.land_stone01_reverb'
     LandingStone(1)=Sound'SoundEffects.Movement.land_stone02_reverb'
     LandingStone(2)=Sound'SoundEffects.Movement.land_stone03_reverb'
     LandingRug(0)=Sound'SoundEffects.Movement.footstep_har_carpet01_walk'
     LandingRug(1)=Sound'SoundEffects.Movement.footstep_har_carpet02_walk'
     LandingRug(2)=Sound'SoundEffects.Movement.footstep_har_carpet03_walk'
     LandingWood(0)=Sound'SoundEffects.Movement.land_wood01_reverb'
     LandingWood(1)=Sound'SoundEffects.Movement.land_wood02_reverb'
     LandingWood(2)=Sound'SoundEffects.Movement.land_wood03_reverb'
     LandingWet(0)=Sound'SoundEffects.Movement.footstep_har_water01'
     LandingWet(1)=Sound'SoundEffects.Movement.footstep_har_water02'
     LandingWet(2)=Sound'SoundEffects.Movement.footstep_har_water03'
     LandingGrass(0)=Sound'SoundEffects.Movement.land_grass01'
     LandingGrass(1)=Sound'SoundEffects.Movement.land_grass02'
     LandingGrass(2)=Sound'SoundEffects.Movement.land_grass03'
     LandingMetal(0)=Sound'SoundEffects.Movement.land_metal01'
     LandingMetal(1)=Sound'SoundEffects.Movement.land_metal02'
     LandingMetal(2)=Sound'SoundEffects.Movement.land_metal03'
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
     GroundSpeed=300.000000
     ControllerClass=Class'HGame.HPCompanionController'
     Physics=PHYS_Falling
     Mesh=SkeletalMesh'HPCharacters_32.Ron'
}
