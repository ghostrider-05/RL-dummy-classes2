/*******************************************************************************
* GFxData_EOSGameClipsController_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxData_EOSGameClipsController_TA extends GFxDataSingleton_X;

var EOSGameClipsManager_TA GameClipsManager;
var EOSGameClipsController_TA GameClipsController;
var const localized string StartClippingMessage;
var const localized string ClipUploadedMessage;
var const localized string ClipFailedMessage;
var const localized string ClipsUploadingMessage;
var const localized string ClipAfterReplayMessage;

defaultproperties
{
	/**StartClippingMessage="Capturing clip to save to Postparty..."*/
	/**ClipUploadedMessage="A clip has been saved to Postparty!"*/
	/**ClipsUploadingMessage="Uploading previous clips, try again in {x}s."*/
	/**ClipAfterReplayMessage="A clip will be captured after this replay."*/
	TableName=EOSGameClipsController
}