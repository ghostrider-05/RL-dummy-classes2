/*******************************************************************************
* ExplosionPreviewer_TA generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class ExplosionPreviewer_TA extends Component;

var() export editinline ProductLoader_TA ProductLoader;
var transient ProductInstanceID ExplosionId;
var transient ProductAsset_GoalExplosion_TA ExplosionProduct;
var transient FXActor_X ExplosionInstance;
var bool bPreviewing;
var PlayerController PC;

defaultproperties
{
	//ProductLoader=ProductLoader_TA'Default__ExplosionPreviewer_TA.DefaultLoader'
}