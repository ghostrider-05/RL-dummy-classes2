/*******************************************************************************
* OnlineGameReservations_AssignTeamsByParty_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class OnlineGameReservations_AssignTeamsByParty_X extends Object;

struct PartyByTeam
{
	var UniqueNetId PartyID;
	var byte Team;
	var int Size;

	structdefaultproperties
	{
		
		Team=255
		Size=0
	}
};
