/*******************************************************************************
* ItemPoolSelection_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ItemPoolSelection_TA extends ItemPool_TA within PlayerItemDispenser_TA;

var() int ConcurrentItemCount;
var() bool bPreviewItems;
var transient array<SpecialPickup_TA> LastDispensedItems;
var transient array<SpecialPickup_TA> DemolishedItems;
var transient int OriginalPickupCooldownSeconds;
var transient int CooldownSecondsAtPreviousGoal;
var transient SpecialPickup_TA ActivePickup;
