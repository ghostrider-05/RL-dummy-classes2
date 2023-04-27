/*******************************************************************************
* ESportConfig_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ESportConfig_TA extends OnlineConfig_X;

const SoonInSeconds = 10800;

struct ESportEventData
{
	var databinding string Image;
	var databinding string Title;
	var databinding string Description;
	var databinding string URL;
	var string UTCStartTime;
	var string UTCEndTime;
	var databinding transient bool bStartingSoon;
	var databinding transient bool bLiveNow;
	var databinding transient Texture ImageTexture;
	var databinding transient int ImageTextureSizeX;
	var databinding transient int ImageTextureSizeY;
	var databinding transient string StartTime;
	var databinding transient string EndTime;
	var transient Qword EpochSoonStartTime;
	var transient Qword EpochStartTime;
	var transient Qword EpochEndTime;

	structdefaultproperties
	{
		Image=""
		Title=""
		Description=""
		URL=""
		UTCStartTime=""
		UTCEndTime=""
		bStartingSoon=false
		bLiveNow=false
		ImageTexture=None
		ImageTextureSizeX=0
		ImageTextureSizeY=0
		StartTime=""
		EndTime=""
		
		
		
	}
};

var databinding array<ESportEventData> Events;