/*******************************************************************************
* GFxData_ContainerDrops_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_ContainerDrops_TA extends GFxDataSingleton_X;

struct ContainerInfo
{
	var databinding int SeriesID;
	var databinding int ProductID;
	var databinding string PossibleContents;

	structdefaultproperties
	{
		SeriesID=0
		ProductID=0
		PossibleContents=""
	}
};

var databinding array<ContainerInfo> ContainerDropList;
var export editinline transient OnlineProductStoreSet_TA ContainerDropsSet;
var AsyncTask GetDropTableTask;

defaultproperties
{
	TableName=ContainerDrops
}