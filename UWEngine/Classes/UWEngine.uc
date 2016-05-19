class UWEngine extends Engine;

var(Drivers) config class < AudioSubsystem > AudioDevice;
var(Drivers) config class < Interaction > Console;
var(Drivers) config class < Interaction > DefaultMenu;
var(Drivers) config class < Interaction > DefaultPlayerMenu;
var(Drivers) config class < NetDriver > NetworkDevice;
var(Drivers) config class < Language > Language;

var primitive CollBox;

var int bShowKWStats;
var int bLogFrameRate;

var(Colors) config color C_TerrainWireAlt;