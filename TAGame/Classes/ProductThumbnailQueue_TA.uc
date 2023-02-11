/*******************************************************************************
* ProductThumbnailQueue_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProductThumbnailQueue_TA extends Object
	config(Engine);

struct native RenderThumbnailScene
{
	var const ProductThumbnail_TA Thumbnail;
	var const ProductAsset_TA Asset;
	var const OnlineProduct_TA OnlineProduct;
	var const ThumbnailScene_TA Scene;
	var const int TextureWidth;
	var const int TextureHeight;
	var const float NextRenderTime;
	var const bool bBeingRendered;
	var const bool bCanceled;

	structdefaultproperties
	{
		Thumbnail=none
		Asset=none
		OnlineProduct=none
		Scene=none
		TextureWidth=0
		TextureHeight=0
		NextRenderTime=0.0
		bBeingRendered=false
		bCanceled=false
	}
};

struct native RenderThumbnailRequest
{
	var const ProductThumbnailResult Result;

	structdefaultproperties
	{
		Result=(Asset=none,OnlineProduct=none,Thumbnail=none)
		
	}
};

var native const noexport Pointer VfTable_FTickableObject;
var() const array<int> ThumbnailSizes;
var() config float RenderDelay;
var() config int RenderCountMax;
var() bool bDebug;
var const transient bool bCreatedThumbnailScene;
var const transient array<RenderThumbnailScene> SceneQue;
var const transient array<RenderThumbnailRequest> Requests;
var transient int ThumbnailsCreatedSinceLastPurge;

defaultproperties
{
	ThumbnailSizes(0)=256
	ThumbnailSizes(1)=1024
	ThumbnailSizes(2)=64
	ThumbnailSizes(3)=512
	RenderDelay=0.10
	RenderCountMax=5
}