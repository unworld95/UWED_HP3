Class SecretManager extends Keypoint;

struct LevelSecretStatus
{
  var string LevelID;
  var int NumFound;
  var int NumInLevel;
  var int LinkedLevel;
};

var LevelSecretStatus FoundStatus[50];
var int NumValidEntries;

defaultproperties
{
     FoundStatus(0)=(LevelID="CR",NumInLevel=3,LinkedLevel=1)
     FoundStatus(1)=(LevelID="CRB",NumInLevel=2)
     FoundStatus(2)=(LevelID="DL",NumInLevel=4,LinkedLevel=3)
     FoundStatus(3)=(LevelID="DLB",NumInLevel=4,LinkedLevel=2)
     FoundStatus(4)=(LevelID="GL",NumInLevel=3,LinkedLevel=5)
     FoundStatus(5)=(LevelID="GLB",NumInLevel=2,LinkedLevel=4)
     NumValidEntries=6
     bStatic=False
}
