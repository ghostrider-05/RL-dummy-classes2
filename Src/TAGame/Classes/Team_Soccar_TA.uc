/*******************************************************************************
* Team_Soccar_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class Team_Soccar_TA extends Team_TA
	hidecategories(Navigation,Movement,Collision);

var repnotify transient int GameScore;
var transient array<Actor> PrimaryStarts;
var transient array<Actor> SecondaryStarts;

defaultproperties
{
	
	//Components(0)=GroupComponent_ORS'Default__Team_Soccar_TA.DefaultRegistryGroup'
}
replication
{
	 if(bNetInitial)
		GameScore;
}
