Class PortraitPasswordManager extends Keypoint;

enum ECurrency {
  Jellybeans,
  CauldronCakes,
  PumpkinPasties
};

struct PortraitPasswordDesc
{
  var int Owned;
  var string PasswordDlgTag;
  var string DescDlgTag;
  var int cost;
  var ECurrency Currency;
};

const FIRST_PORTRAIT_SHORTCUT_INDEX= 8;

var array<PortraitPasswordDesc> PortraitPasswords;
var array<string> HermioneNoPwdDlgTags;
var array<string> HermioneNoShortcutDlgTags;
var array<string> RonNoPwdDlgTags;
var array<string> RonNoShortcutDlgTags;
var transient int VendorCount;

defaultproperties
{
     PortraitPasswords(0)=(PasswordDlgTag="pc_hry_CompComment_432",DescDlgTag="vendor_popup_7",cost=10,Currency=CauldronCakes)
     PortraitPasswords(1)=(PasswordDlgTag="pc_hry_CompComment_438",DescDlgTag="vendor_popup_8",cost=12,Currency=CauldronCakes)
     PortraitPasswords(2)=(PasswordDlgTag="pc_hry_CompComment_426",DescDlgTag="vendor_popup_6",cost=12,Currency=CauldronCakes)
     PortraitPasswords(3)=(PasswordDlgTag="pc_hry_CompComment_444",DescDlgTag="vendor_popup_9",cost=15,Currency=CauldronCakes)
     PortraitPasswords(4)=(PasswordDlgTag="pc_hry_CompComment_414",DescDlgTag="vendor_popup_4",cost=15,Currency=CauldronCakes)
     PortraitPasswords(5)=(PasswordDlgTag="pc_hry_CompComment_408",DescDlgTag="vendor_popup_3",cost=20,Currency=CauldronCakes)
     PortraitPasswords(6)=(PasswordDlgTag="pc_hry_CompComment_456",DescDlgTag="vendor_popup_11",cost=25,Currency=CauldronCakes)
     PortraitPasswords(7)=(PasswordDlgTag="pc_hry_CompComment_450",DescDlgTag="vendor_popup_10",cost=30,Currency=CauldronCakes)
     PortraitPasswords(8)=(PasswordDlgTag="pc_hry_CompComment_324")
     PortraitPasswords(9)=(PasswordDlgTag="pc_hry_CompComment_329")
     PortraitPasswords(10)=(PasswordDlgTag="pc_hry_CompComment_336")
     PortraitPasswords(11)=(PasswordDlgTag="pc_hry_CompComment_341")
     PortraitPasswords(12)=(PasswordDlgTag="pc_hry_CompComment_347")
     PortraitPasswords(13)=(PasswordDlgTag="pc_hry_CompComment_354")
     PortraitPasswords(14)=(PasswordDlgTag="pc_hry_CompComment_360")
     PortraitPasswords(15)=(PasswordDlgTag="pc_hry_CompComment_367")
     PortraitPasswords(16)=(PasswordDlgTag="pc_hry_CompComment_372")
     PortraitPasswords(17)=(PasswordDlgTag="pc_hry_CompComment_378")
     PortraitPasswords(18)=(Owned=1,PasswordDlgTag="pc_hry_CompComment_384")
     PortraitPasswords(19)=(PasswordDlgTag="pc_hry_CompComment_390")
     PortraitPasswords(20)=(PasswordDlgTag="pc_hry_CompComment_397")
     PortraitPasswords(21)=(PasswordDlgTag="pc_hry_CompComment_403")
     HermioneNoPwdDlgTags(0)="pc_her_CompComment_468"
     HermioneNoPwdDlgTags(1)="pc_her_CompComment_472"
     HermioneNoShortcutDlgTags(0)="pc_her_DoorComments_12"
     HermioneNoShortcutDlgTags(1)="pc_her_DoorComments_18"
     HermioneNoShortcutDlgTags(2)="pc_her_DoorComments_22"
     HermioneNoShortcutDlgTags(3)="pc_her_DoorComments_28"
     RonNoPwdDlgTags(0)="pc_ron_CompComment_469"
     RonNoPwdDlgTags(1)="pc_ron_CompComment_471"
     RonNoShortcutDlgTags(0)="pc_ron_DoorComments_10"
     RonNoShortcutDlgTags(1)="pc_ron_DoorComments_16"
     RonNoShortcutDlgTags(2)="pc_ron_DoorComments_24"
     RonNoShortcutDlgTags(3)="pc_ron_DoorComments_30"
     bStatic=False
}
