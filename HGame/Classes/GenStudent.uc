Class GenStudent extends HPCharacter;

var() bool bFemale;
var() int hair;
var Actor HairActor;
var Mesh HairMesh;

defaultproperties
{
     OffEdgeOfTrackEmotes(0)="pc_hry_HryEmotes_19"
     OffEdgeOfTrackEmotes(1)="pc_hry_HryEmotes_17"
     OffEdgeOfTrackEmotes(2)="pc_hry_HryEmotes_15"
     Mesh=SkeletalMesh'HPCharacters_32.GenMale'
     CollisionRadius=25.000000
     CollisionHeight=80.000000
}
