/*******************************************************************************
* OnlineGameParty_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGameParty_X extends Online_X within OnlineGame_X
	abstract;

const LocalPlayersBroadcastDelay = 0.1f;

enum PartyProcessingStatus
{
	PPS_None,
	PPS_Create,
	PPS_Join,
	PPS_MAX
};

struct PlaylistRestrictionPlayer
{
	var UniqueNetId PlayerID;
	var int Tier;

	structdefaultproperties
	{
		
		Tier=0
	}
};

var transient array<PartyMember> PartyMembers;
var transient UniqueLobbyId PartyID;
var transient UniqueNetId PartyLeader;
var const int MaxPartySize;
var const export editinline OnlineMessageComponent_X MessageComponent;
var transient PartyMessage_SearchStatus_X PendingSearchStatus;
var PartyMessage_SearchStatus_X NullSearchStatus;
// The amount of time in seconds that it takes for a party of size 1 to timeout and get destroyed
var() const int PartyTimeout;
var transient int CurrentPartySize;
var transient bool LastbSearchingStatus;
var transient bool LastLockStatus;
var transient bool bPendingIncomingTradeInvite;
var bool bTradeLocked;
var transient name LastSearchState;
var transient PartyJoinMatchSettings MatchSettings;
var transient UniqueNetId PendingTradeInvite;
var transient OnlineGameParty_X.PartyProcessingStatus ProcessingStatus;
var const localized string NotInSameOnlineGameError;
var const localized string MissingLicenseAgreementError;
var PartySequence_InvitedToPlatformParty_X SequenceInvitedToPlatformParty;
var PartySequence_PsyNetPartyUpgrade_X SequencePsyNetPartyUpgrade;
var PartySequence_InvitedToPsyNetParty_X SequenceInvitedToPsyNetParty;
var() PartyConfig_X PartyConfig;
var() PsyNetConfig_X Config;
var OnlineLobbyInterface PlatformLobbyInterface;
var Parties_X PsyNetLobbyInterface;
var int CreatePartyLocalPlayerNum;
var CrossplayConfig_X CrossplayConfig;
var FindServerTask_X FindServerTask;
var string JoinLobbyError;
var array<int> LeaderPreferredPlaylists;

defaultproperties
{
	
	MaxPartySize=8
	//MessageComponent=OnlineMessageComponent_X'Default__OnlineGameParty_X.DefaultMessageComponent'
	//NullSearchStatus=PartyMessage_SearchStatus_X'Default__OnlineGameParty_X.NullSearchStatus0'
	PartyTimeout=300
	
	/**NotInSameOnlineGameError="[PlayerName] is in an online game."*/
	/**MissingLicenseAgreementError="[PlayerName] has not accepted the license agreement."*/
}