/*******************************************************************************
* GFxDataRow_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxDataRow_X extends Object
	abstract
	native;

// Name of the table to create
var() const name TableName;
var() const name PrimaryKeyName;
// Act as a proxy for the databinding properties for this class (pretend we have the same properties as him, as far as exporting ActionScript)
var() const class ProxyClass;
// If true, keep this data during level transitions. Otherwise it gets cleared.
var() bool bLevelTransitionPersistent;
var const transient Object ProxyObject;
var const transient GFxShell_X Shell;
var const transient int RowIndex;

defaultproperties
{
	RowIndex=-1
}