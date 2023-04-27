/*******************************************************************************
* PartyMemberLoadout_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PartyMemberLoadout_TA extends Object
	implements(IVanityLoadout_TA);

var UniqueNetId UniqueId;
var LoadoutData Loadout;
var array<OnlineProductData> OnlineLoadoutData;
var int GaragePreviewTeam;
var transient LocalPlayer LocalPlayer;
var export editinline OnlineProductStoreSet_TA ProductSet;
var byte SortWeight;

defaultproperties
{
	
	Loadout=(TeamPaint=(TeamFinishID=0,CustomFinishID=0,Team=0,TeamColorID=0,CustomColorID=0,bSet=false),Title=XP,TeamIndex=0,OnlineProducts=None,Products=None)
}