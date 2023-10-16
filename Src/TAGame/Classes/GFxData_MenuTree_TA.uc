/*******************************************************************************
* GFxData_MenuTree_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_MenuTree_TA extends GFxDataSingleton_X;

struct MenuTreeNodeData
{
	var databinding name NodeID;
	var databinding string TableName;
	var MenuTreeNode_TA Node;

	structdefaultproperties
	{
		NodeID=None
		TableName=""
		Node=None
	}
};

var MenuTreeConfig_TA MenuTreeConfig;
var MenuTreeBuilder_TA MenuTreeBuilder;
var MenuTreeBranch_TA RootNode;
var MenuTreeBranch_TA CurrentNode;
var databinding array<Object> NodesData;

defaultproperties
{
	TableName=MenuTree
	bLevelTransitionPersistent=true
}