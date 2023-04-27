/*******************************************************************************
* PremiumGaragePreviewSet_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class PremiumGaragePreviewSet_TA extends Object;

var() int PreviewActorIndices[2];
var transient array<CarPreviewActor_TA> CarPreviewActors;
var transient OnlineGameParty_TA OnlineParty;
var CarPreviewActor_TA CurrentCar;
var int CurrentCarIdx;
var bool bFirstSet;
var DLCPack_TA QueuedSwapPack;
var int QueuedSwapSubIdx;

defaultproperties
{
	PreviewActorIndices[0]=4
	PreviewActorIndices[1]=5
	bFirstSet=true
}