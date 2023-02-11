/*******************************************************************************
* GFxData_CarRumble_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_CarRumble_TA extends GFxDataSingleton_X;

struct RumblePickupData
{
	var databinding Texture2D ActiveIcon;
	var databinding Texture2D InactiveIcon;
	var databinding string PickupName;
	var databinding int CooldownSeconds;
	var SpecialPickup_TA Item;

	structdefaultproperties
	{
		ActiveIcon=none
		InactiveIcon=none
		PickupName=""
		CooldownSeconds=0
		Item=none
	}
};

var databinding array<RumblePickupData> Items;
var databinding int SelectedItem;
var databinding bool bHasItems;
var databinding int ItemCount;
var databinding int PreviewTimeSeconds;
var RumblePickups_TA Pickups;

defaultproperties
{
	TableName=CarRumble
}