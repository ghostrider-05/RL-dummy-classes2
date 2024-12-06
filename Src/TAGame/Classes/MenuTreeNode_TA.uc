/*******************************************************************************
* MenuTreeNode_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class MenuTreeNode_TA extends Object;

enum ENodeEnabledRequirement
{
	NodeEnabledRequirement_InMainMenu,
	NodeEnabledRequirement_RankedEnabled,
	NodeEnabledRequirement_MAX
};

enum ENodeBadgeType
{
	NodeBadgeType_None,
	NodeBadgeType_Default,
	NodeBadgeType_Success,
	NodeBadgeType_MAX
};

struct NodePlatformAvailability
{
	var() bool bPlatformIncludeList;
	var() array<_Types_Core.OnlinePlatform> Platforms;

	structdefaultproperties
	{
		bPlatformIncludeList=false
		Platforms.Empty
	}
};

var() databinding name NodeID;
var databinding string Title;
var databinding string Description;
var class GFxDataClass;
var GFxData_MenuTreeNode_TA GFxNode;
var MenuTreeBranch_TA ParentNode;
var() Texture ThumbnailImage;
var MenuTreeNodeCrumbTrail_TA CrumbTrail;
var() string LocalizationCategory;
var() string TitleKey;
var() string DescriptionKey;
var() name FeatureOn;
var() name FeatureOff;
var databinding string SecondaryTitle;
var databinding int SecondaryTitleTimeAmount;
var databinding bool bUppercaseSecondaryTitle;
var databinding string BadgeText;
var databinding ENodeBadgeType BadgeType;
var() array<ENodeEnabledRequirement> EnabledRequirements;
var() array<EEngagementEventType> SupportedEngagementEvents;
var() NodePlatformAvailability PlatformAvailability;

defaultproperties
{
	bUppercaseSecondaryTitle=true
}