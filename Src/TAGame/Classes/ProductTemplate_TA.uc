/*******************************************************************************
* ProductTemplate_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ProductTemplate_TA extends Object
	collapsecategories
	hidecategories(Object);

struct native ProductReplacement2
{
	var array<EConsoleType> Platforms;
	var Product_TA Replacement;

	structdefaultproperties
	{
		Platforms.Empty
		Replacement=None
	}
};

var() ProductSlot_TA Slot;
var EUnlockMethod UnlockMethod;
var EProductQuality Quality;
var() ECrossEntitlementStatus BaseXEStatus;
var() ProductAsset_Pack_TA Folder;
var const DLCPack_TA DLC;
var() class StatClass;
var() Product_TA RequiredProduct;
var() array<ELicenseGroup> ProductIP;
var() array<byte> AllowedList;
var() bool bWhitelistAll;
var() bool bIncludeSE;
var() editoronly bool bLocalized;
var(Tools) editoronly bool bAutoGenerateDLCPack;
var bool bLicensed;
var() array<ELicenseGroup> IPWhitelist;
var() array<ELicenseGroup> IPBlacklist;
var ProductReplacement2 PlatformReplacement;
var array<EConsoleType> PlatformExclusive;
var() array<EProductTradeRestriction> TradeRestrictions;
var() editinline array<editinline ProductAttribute_TA> Attributes;
var() string XELabelKey;
var() int SortPriority;

defaultproperties
{
	UnlockMethod=UnlockMethod_Online
	ProductIP(0)=113
	XELabelKey="GenericXELabel"
}