Class HippoFlyGame extends Info;

struct StatsStruct
{
  var int HighScore;
  var float LastScore;
};

struct CurGameStruct
{
  var int Track;
  var int Score;
  var int TotalScore;
  var float StartTime;
  var bool Initialized;
};

var() int PointValuePerRing;
var() int PassScore[5];
var() int ParTimeSeconds[5];
var() int PointValuePerSecond;
var() int BonusPoints[5];
var() name TrackEvent[5];
var() name IntroEvent[2];
var() name CardWinEvent[5];
var() name SecondWinEvent;
var() name LoseEvent;
var() name LevelExitEvent;
var() name StoryEvent;
var() bool bTutorialMode;
var CurGameStruct CurGame;
var array<StatsStruct> Stats;
var bool IntroEvent0Done;
var bool DelayTrigger;
var bool PlayerWon;
var bool PlayerHasCard;
var WizardCard wc;
var bool AllTracksUnlocked;
var bool bTutorialPaused;
var(Dialog) float fTimeBetweenScoreDialogHarry;
var float fTimeOfLastScoreDialogHarry;
var(Dialog) array<string> DialogsForScoringHarry;

defaultproperties
{
     PointValuePerRing=100
     PassScore(0)=10
     PassScore(1)=11
     PassScore(2)=12
     PassScore(3)=13
     PassScore(4)=14
     fTimeBetweenScoreDialogHarry=10.000000
     DialogsForScoringHarry(0)="pc_hry_HippoFly_9"
     DialogsForScoringHarry(1)="pc_hry_HippoFly_12"
     DialogsForScoringHarry(2)="pc_hry_HippoFly_13"
     DialogsForScoringHarry(3)="pc_hry_HippoFly_15"
     DialogsForScoringHarry(4)="pc_hry_HippoFly_17"
     DialogsForScoringHarry(5)="pc_hry_HippoFly_21"
}
