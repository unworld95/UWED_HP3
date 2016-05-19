Class GlaciusMover extends HGridMover;

var name FreezeAnim;
var name MeltAnim;
var() array<Vector> ConstrainedMoveDirections;
var bool bReadyToMelt;
var() bool bPenalizeNonStraightHits;
var() bool bDestroyAfterMelt;

defaultproperties
{
     FreezeAnim="Form"
     MeltAnim="melt"
     bPenalizeNonStraightHits=True
     bDestroyAfterMelt=True
     bOmniGridMover=True
     DrawType=DT_Mesh
     Mesh=SkeletalMesh'HProps.GlaciusBlock'
     InitialState="StateMelted"
}
