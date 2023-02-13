/*******************************************************************************
* GFxDataCallback_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxDataCallback_X extends GFxObjectReference_X;

enum EDataCallbackType
{
	DataCallbackType_All,
	DataCallbackType_Table,
	DataCallbackType_Row,
	DataCallbackType_Value,
	DataCallbackType_MAX
};

var transient name Table;
var transient int Row;
var transient name Column;
var transient EDataCallbackType Type;

defaultproperties
{
	Row=-1
}