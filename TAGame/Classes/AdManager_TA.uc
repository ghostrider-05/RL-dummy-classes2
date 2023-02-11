/*******************************************************************************
* AdManager_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class AdManager_TA extends Object;

struct CachedAdImageData
{
	var transient string ImageURL;
	var transient Qword CacheEndTime;
	var transient Texture2DDynamic ImageTexture;

	structdefaultproperties
	{
		ImageURL=""
		
		ImageTexture=none
	}
};

struct BillboardUpdateRequestData
{
	var transient int ZoneID;
	var transient int MaterialIndex;
	var transient string MaterialName;
	var export editinline transient StaticMeshComponent Mesh;

	structdefaultproperties
	{
		ZoneID=0
		MaterialIndex=0
		MaterialName=""
		Mesh=none
	}
};

struct BillboardData
{
	var transient string MaterialName;
	var transient int ZoneID;

	structdefaultproperties
	{
		MaterialName=""
		ZoneID=0
	}
};

var Qword CacheDuration;
var transient array<CachedAdImageData> CachedAdImages;
var array<BillboardData> BillboardZoneMapping;
var transient array<BillboardUpdateRequestData> BillboardMeshUpdateRequests;
var transient OnlineImageDownloaderWeb ImageDownloader;
var transient int CurrentAdIndex;
var transient RPC_AdsGet_TA CurrentRPC;

defaultproperties
{
	
	BillboardZoneMapping(0)=(MaterialName="Adverts.Materials.4x1_A_MIC",ZoneID=401)
	BillboardZoneMapping(1)=(MaterialName="Adverts.Materials.4x1_B_MIC",ZoneID=402)
	BillboardZoneMapping(2)=(MaterialName="Adverts.Materials.4x1_C_MIC",ZoneID=403)
	BillboardZoneMapping(3)=(MaterialName="Adverts.Materials.4x1_D_MIC",ZoneID=404)
	BillboardZoneMapping(4)=(MaterialName="Adverts.Materials.2x1_A_MIC",ZoneID=201)
	BillboardZoneMapping(5)=(MaterialName="Adverts.Materials.2x1_B_MIC",ZoneID=202)
	BillboardZoneMapping(6)=(MaterialName="Adverts.Materials.1x2_A_MIC",ZoneID=101)
	BillboardZoneMapping(7)=(MaterialName="Adverts.Materials.1x2_B_MIC",ZoneID=102)
	BillboardZoneMapping(8)=(MaterialName="CS_FX.Mat.TC_AdScreen_Goal_02_MIC",ZoneID=203)
	BillboardZoneMapping(9)=(MaterialName="CS_FX.Mat.TC_AdScreen_02_MIC",ZoneID=404)
	BillboardZoneMapping(10)=(MaterialName="CS_FX.Mat.TC_AdScreen_MIC",ZoneID=405)
	BillboardZoneMapping(11)=(MaterialName="CS_FX.Mat.TC_AdScreen_03_MIC",ZoneID=405)
	BillboardZoneMapping(12)=(MaterialName="CS_FX.Mat.TC_AdScreen_04_MIC",ZoneID=203)
}