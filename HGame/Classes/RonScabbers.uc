Class RonScabbers extends HPCharacter;

var Scabbers S;
var(Skeletal) name attachBone;
var string Label;

defaultproperties
{
     attachBone="body_root"
     Label="Ron"
     OffEdgeOfTrackEmotes(0)="pc_hry_HryEmotes_19"
     OffEdgeOfTrackEmotes(1)="pc_hry_HryEmotes_17"
     OffEdgeOfTrackEmotes(2)="pc_hry_HryEmotes_15"
     GroundSpeed=300.000000
     Physics=PHYS_Falling
     Mesh=SkeletalMesh'HPCharacters_32.Ron'
}
