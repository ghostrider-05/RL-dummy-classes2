/*******************************************************************************
* AnimNodeSequence_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class AnimNodeSequence_X extends AnimNodeSequence
	hidecategories(Object,Object,Object);

var() float AnimSetBlendTime;
var() bool bResetOnRelevant;
var transient AnimSequence PrevAnimSeq;
var transient int PrevAnimLinkupIndex;
var transient float BlendTimeLeft;

defaultproperties
{
	AnimSetBlendTime=0.10
	bResetOnRelevant=true
}