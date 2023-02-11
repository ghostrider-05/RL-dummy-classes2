/*******************************************************************************
* ProfileLoadoutSave_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProfileLoadoutSave_TA extends SaveObject_TA;

const MaxLoadoutSets = 50;

enum ELoadoutSaveVersion
{
	ELoadoutSaveVersion_InstanceIDV2,
	ELoadoutSaveVersion_MAX
};

var array<LoadoutSet_TA> LoadoutSets;
var LoadoutSet_TA EquippedLoadoutSet;
var /*0x00080000-0x00000000*/ name PlayerTitle;
var int PreviewTeamIndex;
var /*0x00080000-0x00000000*/ ProductInstanceID MusicStingerInstanceID;

defaultproperties
{
	PreviewTeamIndex=1
}