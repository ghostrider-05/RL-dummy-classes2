/*******************************************************************************
* Profile_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Profile_TA extends Object;

var int LocalId;
var string ProfileName;
var transient SaveData_TA SaveData;
var transient int ControllerId;
var bool bShouldRandomizeLoadoutEachGame;
var int ProfileVersion;
var transient int EditLoadoutSetIndex;
var export editinline transient ObjectProvider SaveObjectProvider;
var array<SaveObject_TA> SaveObjects;
var transient ProfileLoadoutSave_TA LoadoutSave;

defaultproperties
{
	ControllerId=-1
	//SaveObjectProvider=ObjectProvider'Default__Profile_TA.DefaultObjectProvider'
}