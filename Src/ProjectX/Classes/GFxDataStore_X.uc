/*******************************************************************************
* GFxDataStore_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class GFxDataStore_X extends Component within GFxShell_X
	native;

struct native GFxDataStoreRow
{
	var array<ASValue> Values;
	var GFxDataRow_X BoundObject;

	structdefaultproperties
	{
		Values.Empty
		BoundObject=None
	}
};

struct native GFxDataStoreColumn
{
	var GFxMoviePlayer.ASType Type;
	var name Name;

	structdefaultproperties
	{
		Type=AS_Undefined
		Name=None
	}
};

struct native GFxDataStoreTable
{
	var name Name;
	var array<GFxDataStoreColumn> Columns;
	var array<GFxDataStoreRow> Rows;
	var bool bLevelTransitionPersistent;
	var native Map_Mirror PrimaryKeyMap;

	structdefaultproperties
	{
		Name=None
		Columns.Empty
		Rows.Empty
		bLevelTransitionPersistent=false
	}
};

struct native GFxDirtyRow
{
	var int RowNum;
	var array<name> DirtyValues;

	structdefaultproperties
	{
		RowNum=0
		DirtyValues.Empty
	}
};

struct native GFxDirtyTable
{
	var name Name;
	var array<GFxDirtyRow> DirtyRows;

	structdefaultproperties
	{
		Name=None
		DirtyRows.Empty
	}
};

var const transient array<GFxDataStoreTable> Tables;
var const transient array<GFxDirtyTable> DirtyTables;
var native const transient Map_Mirror ObjectNameToTable;
var() bool bDebugGetValue;
