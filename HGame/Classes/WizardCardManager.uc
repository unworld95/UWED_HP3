Class WizardCardManager extends Keypoint 
NotPlaceable;

enum EWizardCardStatus {
  WCS_AvailableInLevel,
  WCS_AvailableToVendors,
  WCS_AvailableInAdventureLevel,
  WCS_AvailableToFnGShop,
  WCS_SpecialLastCard,
  WCS_OwnedByPlayer,
  WCS_OwnedByVendor
};

enum ECurrency {
  Jellybeans,
  CauldronCakes,
  PumpkinPasties
};

struct CardDesc
{
  var Class<WizardCard> CardClass;
  var EWizardCardStatus Status;
  var int GameStateAvailable;
  var int cost;
  var ECurrency Currency;
};

struct CardSetDesc
{
  var string DialogTag;
  var string PrefixID;
  var int NumCards;
};

var array<CardSetDesc> CardSets;
var array<CardDesc> Cards;

defaultproperties
{
     CardSets(0)=(DialogTag="WizardMenu_104",PrefixID="WZ",NumCards=15)
     CardSets(1)=(DialogTag="WizardMenu_105",PrefixID="WI",NumCards=15)
     CardSets(2)=(DialogTag="WizardMenu_118",PrefixID="QU",NumCards=5)
     CardSets(3)=(DialogTag="WizardMenu_107",PrefixID="VP",NumCards=5)
     CardSets(4)=(DialogTag="WizardMenu_109",PrefixID="HG",NumCards=5)
     CardSets(5)=(DialogTag="WizardMenu_111",PrefixID="GI",NumCards=5)
     CardSets(6)=(DialogTag="WizardMenu_108",PrefixID="GB",NumCards=5)
     CardSets(7)=(DialogTag="WizardMenu_110",PrefixID="DR",NumCards=5)
     CardSets(8)=(DialogTag="WizardMenu_112",PrefixID="BE",NumCards=15)
     CardSets(9)=(DialogTag="WizardMenu_113",PrefixID="BO",NumCards=5)
     Cards(0)=(CardClass=Class'HGame.WC_AlgufftheAwful',cost=100)
     Cards(1)=(CardClass=Class'HGame.WC_AmarilloLestoat',cost=100)
     Cards(2)=(CardClass=Class'HGame.WC_Babayaga',cost=100)
     Cards(3)=(CardClass=Class'HGame.WC_BeatrixBloxam',Status=WCS_AvailableToVendors,GameStateAvailable=10,cost=25)
     Cards(4)=(CardClass=Class'HGame.WC_Billywig',cost=100)
     Cards(5)=(CardClass=Class'HGame.WC_BlodwynBludd',cost=100)
     Cards(6)=(CardClass=Class'HGame.WC_BowmanWright',cost=100)
     Cards(7)=(CardClass=Class'HGame.WC_Bowtruckle',cost=100)
     Cards(8)=(CardClass=Class'HGame.WC_BrantheBloodthirsty',cost=100)
     Cards(9)=(CardClass=Class'HGame.WC_CarlottaPinkstone',Status=WCS_AvailableToVendors,GameStateAvailable=10,cost=100)
     Cards(10)=(CardClass=Class'HGame.WC_Cliodne',Status=WCS_AvailableToVendors,GameStateAvailable=60,cost=30,Currency=PumpkinPasties)
     Cards(11)=(CardClass=Class'HGame.WC_CommonWelshGreenDragon',cost=100)
     Cards(12)=(CardClass=Class'HGame.WC_CordeliaMisericordia',cost=100)
     Cards(13)=(CardClass=Class'HGame.WC_CountVladDrakul',cost=100)
     Cards(14)=(CardClass=Class'HGame.WC_CrispinCronk',Status=WCS_AvailableToVendors,GameStateAvailable=10,cost=100)
     Cards(15)=(CardClass=Class'HGame.WC_Cyclops',cost=100)
     Cards(16)=(CardClass=Class'HGame.WC_CyprianYoudle',cost=100)
     Cards(17)=(CardClass=Class'HGame.WC_DorcasWellbeloved',Status=WCS_AvailableToVendors,GameStateAvailable=70,cost=175)
     Cards(18)=(CardClass=Class'HGame.WC_DoubleEndedNewt',cost=100)
     Cards(19)=(CardClass=Class'HGame.WC_Doxy',cost=100)
     Cards(20)=(CardClass=Class'HGame.WC_Dumbledore',cost=100)
     Cards(21)=(CardClass=Class'HGame.WC_DymphnaFurmage',Status=WCS_AvailableToVendors,GameStateAvailable=10,cost=50)
     Cards(22)=(CardClass=Class'HGame.WC_EargittheUgly',cost=100)
     Cards(23)=(CardClass=Class'HGame.WC_EdgarStroulger',Status=WCS_AvailableToVendors,GameStateAvailable=60,cost=150)
     Cards(24)=(CardClass=Class'HGame.WC_ElfridaClagg',Status=WCS_AvailableToVendors,GameStateAvailable=60,cost=125)
     Cards(25)=(CardClass=Class'HGame.WC_EthelredTheEverReady',Status=WCS_AvailableToVendors,GameStateAvailable=70,cost=80,Currency=PumpkinPasties)
     Cards(26)=(CardClass=Class'HGame.WC_FalcoAesalon',Status=WCS_AvailableInAdventureLevel,GameStateAvailable=70,cost=175)
     Cards(27)=(CardClass=Class'HGame.WC_FulberttheFearful',cost=100)
     Cards(28)=(CardClass=Class'HGame.WC_GiantPurpleToad',cost=100)
     Cards(29)=(CardClass=Class'HGame.WC_GiantSquid',cost=100)
     Cards(30)=(CardClass=Class'HGame.WC_GlanmorePeakes',Status=WCS_AvailableToVendors,GameStateAvailable=70,cost=60,Currency=PumpkinPasties)
     Cards(31)=(CardClass=Class'HGame.WC_Gnome',cost=100)
     Cards(32)=(CardClass=Class'HGame.WC_GodricGryffindor',cost=100)
     Cards(33)=(CardClass=Class'HGame.WC_Goliath',cost=100)
     Cards(34)=(CardClass=Class'HGame.WC_Gringott',cost=100)
     Cards(35)=(CardClass=Class'HGame.WC_GroganStump',Status=WCS_AvailableToFnGShop,GameStateAvailable=10,cost=25,Currency=PumpkinPasties)
     Cards(36)=(CardClass=Class'HGame.WC_GunhildaOfGorsemoor',Status=WCS_AvailableToFnGShop,GameStateAvailable=10,cost=100)
     Cards(37)=(CardClass=Class'HGame.WC_GwenogJones',cost=100)
     Cards(38)=(CardClass=Class'HGame.WC_Gytrash',cost=100)
     Cards(39)=(CardClass=Class'HGame.WC_HarryPotter',Status=WCS_SpecialLastCard,cost=100)
     Cards(40)=(CardClass=Class'HGame.WC_HebrideanBlackDragon',cost=100)
     Cards(41)=(CardClass=Class'HGame.WC_HelgaHufflepuff',cost=100)
     Cards(42)=(CardClass=Class'HGame.WC_HengistofUpperBarnton',cost=100)
     Cards(43)=(CardClass=Class'HGame.WC_HesperStarkey',Status=WCS_AvailableToFnGShop,GameStateAvailable=10,cost=125)
     Cards(44)=(CardClass=Class'HGame.WC_HonoriaNutcombe',Status=WCS_AvailableInAdventureLevel,GameStateAvailable=70,cost=175)
     Cards(45)=(CardClass=Class'HGame.WC_HungarianHorntailDragon',cost=100)
     Cards(46)=(CardClass=Class'HGame.WC_IgnatiaWildsmith',Status=WCS_AvailableToVendors,GameStateAvailable=60,cost=10,Currency=PumpkinPasties)
     Cards(47)=(CardClass=Class'HGame.WC_Imp',cost=100)
     Cards(48)=(CardClass=Class'HGame.WC_JocundaSykes',Status=WCS_AvailableToVendors,GameStateAvailable=70,cost=200)
     Cards(49)=(CardClass=Class'HGame.WC_JoscelindWadcock',cost=100)
     Cards(50)=(CardClass=Class'HGame.WC_Kelpie',cost=100)
     Cards(51)=(CardClass=Class'HGame.WC_LadyCarmillaSanguina',cost=100)
     Cards(52)=(CardClass=Class'HGame.WC_LeticiaSomnolens',cost=100)
     Cards(53)=(CardClass=Class'HGame.WC_MalodoraGrymm',cost=100)
     Cards(54)=(CardClass=Class'HGame.WC_Manticore',cost=100)
     Cards(55)=(CardClass=Class'HGame.WC_MirabellaPlunkett',Status=WCS_AvailableToFnGShop,GameStateAvailable=10,cost=25,Currency=PumpkinPasties)
     Cards(56)=(CardClass=Class'HGame.WC_MorganLeFay',Status=WCS_AvailableToVendors,GameStateAvailable=70,cost=50,Currency=PumpkinPasties)
     Cards(57)=(CardClass=Class'HGame.WC_Morholt',cost=100)
     Cards(58)=(CardClass=Class'HGame.WC_MountainTroll',Status=WCS_AvailableToFnGShop,GameStateAvailable=10,cost=150)
     Cards(59)=(CardClass=Class'HGame.WC_MungoBonham',Status=WCS_AvailableToVendors,GameStateAvailable=10,cost=50)
     Cards(60)=(CardClass=Class'HGame.WC_NorvelTwonk',Status=WCS_AvailableToVendors,GameStateAvailable=60,cost=125)
     Cards(61)=(CardClass=Class'HGame.WC_NorwegianRidgebackDragon',cost=100)
     Cards(62)=(CardClass=Class'HGame.WC_OldMotherHubbard',cost=100)
     Cards(63)=(CardClass=Class'HGame.WC_OswaldBeamish',Status=WCS_AvailableToVendors,GameStateAvailable=70,cost=225)
     Cards(64)=(CardClass=Class'HGame.WC_Phoenix',cost=100)
     Cards(65)=(CardClass=Class'HGame.WC_ProfessorAmandoDippet',Status=WCS_AvailableInAdventureLevel,GameStateAvailable=90,cost=250)
     Cards(66)=(CardClass=Class'HGame.WC_RoderickPlumpton',cost=100)
     Cards(67)=(CardClass=Class'HGame.WC_RomanianLonghornDragon',cost=100)
     Cards(68)=(CardClass=Class'HGame.WC_RowenaRavenclaw',cost=100)
     Cards(69)=(CardClass=Class'HGame.WC_SacharissaTugwood',Status=WCS_AvailableInAdventureLevel,GameStateAvailable=90,cost=200)
     Cards(70)=(CardClass=Class'HGame.WC_SalazarSlytherin',cost=100)
     Cards(71)=(CardClass=Class'HGame.WC_SirHerbertVarney',cost=100)
     Cards(72)=(CardClass=Class'HGame.WC_Streeler',Status=WCS_AvailableToFnGShop,GameStateAvailable=10,cost=200)
     Cards(73)=(CardClass=Class'HGame.wc_ThaddeusThurkell',Status=WCS_AvailableToVendors,GameStateAvailable=70,cost=70,Currency=PumpkinPasties)
     Cards(74)=(CardClass=Class'HGame.WC_UgtheUnreliable',cost=100)
     Cards(75)=(CardClass=Class'HGame.WC_Unicorn',cost=100)
     Cards(76)=(CardClass=Class'HGame.WC_UrgtheUnclean',cost=100)
     Cards(77)=(CardClass=Class'HGame.WC_WendelintheWeird',Status=WCS_AvailableToVendors,GameStateAvailable=10,cost=75)
     Cards(78)=(CardClass=Class'HGame.WC_WilfredElphick',Status=WCS_AvailableToVendors,GameStateAvailable=60,cost=40,Currency=PumpkinPasties)
     Cards(79)=(CardClass=Class'HGame.WC_ZouYen',Status=WCS_AvailableToVendors,GameStateAvailable=60,cost=20,Currency=PumpkinPasties)
     bStatic=False
}
