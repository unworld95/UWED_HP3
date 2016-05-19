Class ChallengeStarManager extends UWKeypoint;

//#exec texture import file=Textures\shield.bmp name=shield masked=1


struct LevelFoundStatus
{
  var string LevelID;
  var int NumInLevel;
  var int Found[10];
  var int LinkedLevel;
};

var LevelFoundStatus FoundStatus[9];
const MAXLEVELS= 9;
const MAXSHIELDS= 10;

event SavePersistentData ()
{
  local int i;
  local int j;

  i = 0;
  if ( i < 9 )
  {
    j = 0;
    if ( j < 10 )
    {
      KWGame(Level.Game).PersistentStore.SaveInt(FoundStatus[i].LevelID $ string(j),FoundStatus[i].Found[j]);
      j++;
      //goto JL001A;
    }
    i++;
    //goto JL0007;
  }
}

event RestorePersistentData ()
{
  local int i;
  local int j;

  if ( KWGame(Level.Game).PersistentStore == None )
  {
    return;
  }
  i = 0;
  if ( i < 9 )
  {
    j = 0;
    if ( j < 10 )
    {
      KWGame(Level.Game).PersistentStore.RestoreInt(FoundStatus[i].LevelID $ string(j),FoundStatus[i].Found[j]);
      j++;
      //goto JL003E;
    }
    i++;
    //goto JL002B;
  }
}

function ChallengeStarFound (ChallengeStarInvItem item)
{
  local int i;
  local string LevelID;
  local int StarIdx;

  LevelID = Left(item.StarName,Len(item.StarName) - 3);
  StarIdx = int(Right(item.StarName,2)) - 1;
  i = 0;
  if ( i < 9 )
  {
    if ( LevelID ~= FoundStatus[i].LevelID )
    {
      FoundStatus[i].Found[StarIdx] = 1;
    }
    i++;
    //goto JL004E;
  }
}

function bool HasChallengeStarBeenFound (string StarName)
{
  local int i;
  local string LevelID;
  local int StarIdx;
  local bool bFound;

  LevelID = Left(StarName,Len(StarName) - 3);
  StarIdx = int(Right(StarName,2)) - 1;
  bFound = False;
  i = 0;
  if ( (i < 9) &&  !bFound )
  {
    if ( LevelID ~= FoundStatus[i].LevelID )
    {
      bFound = FoundStatus[i].Found[StarIdx] != 0;
    }
    i++;
    //goto JL003B;
  }
  return bFound;
}

function int NumFound (optional string LevelIDIn)
{
  local int i;
  local int pos;
  local int iCount;
  local string LevelID;

  iCount = 0;
  if ( LevelIDIn != "" )
  {
    LevelID = LevelIDIn;
  } else {
    LevelID = LevelID;
  }
  pos = -1;
  i = 0;
  if ( i < 9 )
  {
    if ( LevelID ~= FoundStatus[i].LevelID )
    {
      pos = i;
    } else {
      i++;
      //goto JL0047;
    }
  }
  if ( pos != -1 )
  {
    i = 0;
    if ( i < 10 )
    {
      if ( FoundStatus[pos].Found[i] != 0 )
      {
        iCount++;
      }
      i++;
      //goto JL009B;
    }
    if ( FoundStatus[pos].LinkedLevel != -1 )
    {
      pos = FoundStatus[pos].LinkedLevel;
      i = 0;
      if ( i < 10 )
      {
        if ( FoundStatus[pos].Found[i] != 0 )
        {
          iCount++;
        }
        i++;
        //goto JL010B;
      }
    }
  }
  return iCount;
JL010B:
}

function int TotalInLevel (optional string LevelIDIn)
{
  local int i;
  local string LevelID;
  local int pos;
  local int Count;

  if ( LevelIDIn != "" )
  {
    LevelID = LevelIDIn;
  } else {
    LevelID = LevelID;
  }
  Count = 0;
  pos = -1;
  i = 0;
  if ( i < 9 )
  {
    if ( LevelID ~= FoundStatus[i].LevelID )
    {
      pos = i;
    } else {
      i++;
      //goto JL0047;
    }
  }
  if ( pos != -1 )
  {
    Count = FoundStatus[pos].NumInLevel;
    if ( FoundStatus[pos].LinkedLevel != -1 )
    {
      Count += FoundStatus[FoundStatus[pos].LinkedLevel].NumInLevel;
    }
  }
  return Count;
}

function FindAll ()
{
  local int i;
  local int j;

  i = 0;
  if ( i < 9 )
  {
    j = 0;
    if ( j < FoundStatus[i].NumInLevel )
    {
      FoundStatus[i].Found[j] = 1;
      j++;
      //goto JL001A;
    }
    i++;
    //goto JL0007;
  }
}

defaultproperties
{
     FoundStatus(0)=(LevelID="CR",NumInLevel=6,LinkedLevel=1)
     FoundStatus(1)=(LevelID="CRB",NumInLevel=4)
     FoundStatus(2)=(LevelID="DL",NumInLevel=6,LinkedLevel=3)
     FoundStatus(3)=(LevelID="DLB",NumInLevel=4,LinkedLevel=2)
     FoundStatus(4)=(LevelID="GL",NumInLevel=6,LinkedLevel=5)
     FoundStatus(5)=(LevelID="GLB",NumInLevel=4,LinkedLevel=4)
     FoundStatus(6)=(LevelID="RF",NumInLevel=5,LinkedLevel=-1)
     FoundStatus(7)=(LevelID="HF",NumInLevel=5,LinkedLevel=-1)
     FoundStatus(8)=(LevelID="HFE",NumInLevel=5,LinkedLevel=-1)
     bStatic=False
}
