/*******************************************************************************
* RemoteAvatarPermissions_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class RemoteAvatarPermissions_X extends Object
	native;

enum EAvatarRequestTryGetResult
{
	ARTGR_NotFound,
	ARTGR_False,
	ARTGR_True,
	ARTGR_MAX
};

var /*0x00008000-0x00000000*/ OnlineGame_X OnlineGame;
var /*0x00008000-0x00000000*/ EpicConfig_X EpicConfig;
var array<RemoteAvatarPermissionsRequest_X> UnsentRequests;
var array<RemoteAvatarPermissionsRequest_X> AllRequests;
var native Map_Mirror PermissionCache;
