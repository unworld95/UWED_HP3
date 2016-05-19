//================================================================================
// KWCutSceneFile.
//================================================================================

class KWCutSceneFile extends Info;

struct Section
{
  var string SectionName;
  var int StartLine;
  var int EndLine;
};

var string Filename;
var bool bLoaded;
var bool bDirty;
var array<string> RawLines;
var array<Section> Sections;

defaultproperties
{
}
