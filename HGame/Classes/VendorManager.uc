Class VendorManager extends Keypoint 
Placeable;

enum EVendorSpeakSituation {
  VSS_InsufficientFunds,
  VSS_VendorSolicitPlayer,
  VSS_PlayerAccept,
  VSS_PlayerDecline,
  VSS_VendorSoldItem,
  VSS_VendorSoldItemNot
};

enum ECurrency {
  Jellybeans,
  CauldronCakes,
  PumpkinPasties
};

var transient VendorItem item;
var transient int NumItemsForSale;
var transient HPGenericStudent VendorActor;
var transient HPCharacter Fred;
var transient HPCharacter George;
var transient name AnimName;
var transient name OldControllerState;
var transient bool bIsItemSaleable;
var int NumPastiesForSale;
var int NumCakesForSale;
var float Duration;
var float TimeDoneSpeaking;
var int Response;
var int HudItem;
var Class<KWInventoryCollection> InvCollection;
var int AmtCurrencyToAnimate;
var array<string> WCGeneralSolicits;
var array<string> WCWitchWizardSolicits;
var array<string> ChocolateSolicits;
var array<string> PortraitPasswordSolicits;
var array<string> GeneralSolicits;
var array<string> PlayerAcceptPurchaseDlgTags;
var array<string> PlayerDeclinePurchaseDlgTags;
var array<string> MaleInsufficientFundsDlgTags;
var array<string> MaleSolicitItemDlgTags;
var array<string> MaleItemSoldDlgTags;
var array<string> MaleItemNotSoldDlgTags;
var array<string> FemaleInsufficientFundsDlgTags;
var array<string> FemaleSolicitItemDlgTags;
var array<string> FemaleItemSoldDlgTags;
var array<string> FemaleItemNotSoldDlgTags;
const VendorPkg= "Vendor";
const WCDragonSetSolicit= "PC_FRE_SHOPTALK_34";
const WCGoblinSetSolicit= "PC_GEO_SHOPTALK_28";
const WCGiantSetSolicit= "PC_GEO_SHOPTALK_32";
const WCHagSetSolicit= "PC_FRE_SHOPTALK_30";
const WCVampireSetSolicit= "PC_FRE_SHOPTALK_26";
const WCQuidditchSetSolicit= "PC_GEO_SHOPTALK_24";

defaultproperties
{
     NumPastiesForSale=30
     NumCakesForSale=50
     bStatic=False
}
