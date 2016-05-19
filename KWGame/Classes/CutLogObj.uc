//================================================================================
// CutLogObj.
//================================================================================

class CutLogObj extends Object;

var transient CutLogObj theLog;
var Actor CMActor;
var array<string> Lines;
var bool bLogToScreen;
var CutConsole CutConsole;

static function CutLogObj GetCutLog ()
{
  if ( Default.theLog == None )
  {
    CreateLog();
  }
  return Default.theLog;
}

static function CreateLog ()
{
  if ( Default.theLog == None )
  {
    Default.theLog = new Class'CutLogObj';
  }
  if ( Default.theLog != None )
  {
    Default.theLog.Log("Log open");
  }
}

function addLine (string Line)
{
}

function CLog (string Str)
{
  if ( Default.theLog == None )
  {
    CreateLog();
  }
  if ( Default.theLog != None )
  {
    Default.theLog.addLine(Str);
  }
}

function PostRender (Canvas Canvas)
{
  Log("foo");
}

event Destroyed ()
{
  Log(string(self) $ " destroyed",'CutLog');
}
