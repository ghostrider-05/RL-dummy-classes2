/*******************************************************************************
* GFxHUD_Replay_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxHUD_Replay_TA extends GFxHUD_Spectator_TA
	transient
	config(Game)
	hidecategories(Navigation);

var transient GameInfo_Replay_TA Game;
var() float PrevKeyframeBufferTime;
var transient bool bUserPaused;
var transient bool bPausedForEndOfReplay;
var array<ProductAsset_TA> ReferencedProducts;

defaultproperties
{
	PrevKeyframeBufferTime=1.0
	TickGroup=TG_PreAsyncWork
}