/*******************************************************************************
* OnlineGamePlayerTitles_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGamePlayerTitles_TA extends Online_X;

struct CachedPlayerData
{
	var UniqueNetId PlayerID;
	var array<name> Titles;
	var float CacheTime;
	var RPC_X RPC;
	var array< Object > Callbacks;

	structdefaultproperties
	{
		
		Titles.Empty
		CacheTime=0.0
		RPC=none
		Callbacks.Empty
	}
};

var() float PlayerTitleCacheTime;
var transient array<CachedPlayerData> PlayerCache;
var /*0x00008000-0x00000000*/ PlayerTitleConfig_X TitleConfig;

defaultproperties
{
	PlayerTitleCacheTime=600.0
}