/*******************************************************************************
* ServerStartVoteEvent_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ServerStartVoteEvent_TA extends Object;

struct PartyInfo
{
	var UniqueNetId LeaderID;
	var array<UniqueNetId> FollowerIds;
	var Actor VoterOwner;

	structdefaultproperties
	{
		
		FollowerIds.Empty
		VoterOwner=none
	}
};

var array<PartyInfo> Parties;
var Actor VoteOwner;
