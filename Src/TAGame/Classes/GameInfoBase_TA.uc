/*******************************************************************************
* GameInfoBase_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GameInfoBase_TA extends GameInfo_X
	abstract
	config(Game)
	hidecategories(Navigation,Movement,Collision);

var() array<GFxSoundPack_X> SoundPacks;

defaultproperties
{
	
	Components(0)=GroupComponent_ORS'Default__GameInfoBase_TA.DefaultRegistryGroup'
}