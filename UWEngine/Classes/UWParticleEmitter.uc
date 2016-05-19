class UWParticleEmitter extends ParticleEmitter;

var (Collision) bool PawnCollision;
var transient Emitter OuterEmitter;
var (Acceleration) name AttractingActorTag;
var Actor AttractingActor;
var (Color) float Opacity;
var(Velocity) bool bAddOwnerVelocity;

var (General) float LowScale;