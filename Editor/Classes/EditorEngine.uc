//=============================================================================
// EditorEngine: The UnrealEd subsystem.
// This is a built-in Unreal class and it shouldn't be modified.
//=============================================================================
class EditorEngine extends Engine
	native
	noexport
	transient;

#exec Texture Import File=Textures\Bad.bmp
#exec Texture Import File=Textures\BadHighlight.bmp
#exec Texture Import File=Textures\Bkgnd.bmp
#exec Texture Import File=Textures\BkgndHi.bmp
#exec Texture Import File=Textures\MaterialArrow.bmp MASKED=1
#exec Texture Import File=Textures\MaterialBackdrop.bmp

// Objects.
var const level       Level;
var const model       TempModel;
var const texture     CurrentTexture;
var const staticmesh  CurrentStaticMesh;
var const mesh		  CurrentMesh;
var const class       CurrentClass;
var const transbuffer Trans;
var const textbuffer  Results;
var const int         Pad[8];

// Textures.
var const texture Bad, Bkgnd, BkgndHi, BadHighlight, MaterialArrow, MaterialBackdrop;

// Used in UnrealEd for showing materials
var staticmesh	TexPropCube;
var staticmesh	TexPropSphere;

// Toggles.
var const bool bFastRebuild, bBootstrapping;

// Other variables.
var const config int AutoSaveIndex;
var const int AutoSaveCount, Mode, TerrainEditBrush, ClickFlags;
var const float MovementSpeed;
var const package PackageContext;
var const vector AddLocation;
var const plane AddPlane;

// Misc.
var const array<Object> Tools;
var const class BrowseClass;

// Grid.
var const int ConstraintsVtbl;
var(Grid) config bool GridEnabled;
var(Grid) config bool SnapVertices;
var(Grid) config float SnapDistance;
var(Grid) config vector GridSize;

// Rotation grid.
var(RotationGrid) config bool RotGridEnabled;
var(RotationGrid) config rotator RotGridSize;

// Advanced.
var(Advanced) config bool UseSizingBox;
var(Advanced) config bool UseAxisIndicator;
var(Advanced) config float FovAngleDegrees;
var(Advanced) config bool GodMode;
var(Advanced) config bool AutoSave;
var(Advanced) config byte AutosaveTimeMinutes;
var(Advanced) config string GameCommandLine;
var(Advanced) config array<string> EditPackages;
var(Advanced) config bool AlwaysShowTerrain;
var(Advanced) config bool UseActorRotationGizmo;
var(Advanced) config bool LoadEntirePackageWhenSaving;

defaultproperties
{
     Bad=Texture'Editor.Bad'
     Bkgnd=Texture'Editor.Bkgnd'
     BkgndHi=Texture'Editor.BkgndHi'
     BadHighlight=Texture'Editor.BadHighlight'
     MaterialArrow=Texture'Editor.MaterialArrow'
     MaterialBackdrop=Texture'Editor.MaterialBackdrop'
     AutoSaveIndex=6
     GridEnabled=True
     SnapDistance=10.000000
     GridSize=(X=16.000000,Y=16.000000,Z=16.000000)
     RotGridEnabled=True
     RotGridSize=(Pitch=1024,Yaw=1024,Roll=1024)
     UseAxisIndicator=True
     FovAngleDegrees=90.000000
     GodMode=True
     AutoSave=True
     AutosaveTimeMinutes=5
     GameCommandLine="-log"
     EditPackages(0)="Core"
     EditPackages(1)="Engine"
     EditPackages(2)="Fire"
     EditPackages(3)="Editor"
     EditPackages(4)="UnrealEd"
     EditPackages(5)="UWindow"
     EditPackages(6)="GamePlay"
     EditPackages(7)="GUI"
     EditPackages(8)="UDebugMenu"
     EditPackages(9)="KWGame"
     EditPackages(10)="HGame"
     EditPackages(11)="AmbientCreatures"
     EditPackages(12)="Runtime"
     EditPackages(13)="RTInterface"
     CacheSizeMegs=32
}
