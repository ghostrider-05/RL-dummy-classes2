/*******************************************************************************
* GFxData_MenuSequence_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_MenuSequence_TA extends GFxDataSingleton_X;

struct MenuSequencePair
{
	var name MenuSequence;
	var name MenuID;

	structdefaultproperties
	{
		MenuSequence=None
		MenuID=None
	}
};

var databinding bool bInMainMenu;
var transient array<MenuSequencePair> MenuStack;

defaultproperties
{
	TableName=MenuSequence
}