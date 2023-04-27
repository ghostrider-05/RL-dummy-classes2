/*******************************************************************************
* AnimNodeBlend_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class AnimNodeBlend_TA extends AnimNodeBlendBase
	hidecategories(Object,Object,Object);

var() float BlendSpeed;
var transient float Position;
var transient float DesiredPosition;

defaultproperties
{
	Children(0)=(Name=Child1,Anim=None,Weight=1.0,BlendWeight=0.0,bMirrorSkeleton=false,bIsAdditive=false,DrawY=0)
	Children(1)=(Name=Child2,Anim=None,Weight=0.0,BlendWeight=0.0,bMirrorSkeleton=false,bIsAdditive=false,DrawY=0)
}