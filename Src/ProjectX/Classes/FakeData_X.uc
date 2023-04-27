/*******************************************************************************
* FakeData_X generated by MVN.RLLib using AssetExtraction.
* MVN.RLLib © 2019 Martin VN. All rights reserved.
* All rights belong to their respective owners.
*******************************************************************************/
class FakeData_X extends Object;

enum FakeDataEnum
{
	FakeData_1,
	FakeData_2,
	FakeData_3,
	FakeData_Count,
	FakeData_MAX
};

struct native FakeData1
{
	var string string1;
	var name name1;
	var bool bool1;
	var Qword qword1;
	var float float1;
	var byte byte1;
	var int int1;
	var FakeData_X.FakeDataEnum enum1;

	structdefaultproperties
	{
		string1=""
		name1=None
		bool1=false
		
		float1=0.0
		byte1=0
		int1=0
		enum1=FakeData_1
	}
};

struct native FakeData2
{
	var FakeData1 struct1;
	var string string1;
	var name name1;
	var bool bool1;
	var Qword qword1;
	var float float1;
	var byte byte1;
	var int int1;
	var FakeData_X.FakeDataEnum enum1;
	var array<FakeData1> array1;
	var array<string> array2;

	structdefaultproperties
	{
		
		string1=""
		name1=None
		bool1=false
		
		float1=0.0
		byte1=0
		int1=0
		enum1=FakeData_1
		array1.Empty
		array2.Empty
	}
};

struct native FakeData3
{
	var array<FakeData2> array1;
	var string string1;
	var FakeData1 struct1;
	var name name1;
	var array<FakeData2> array2;
	var array<FakeData2> array3;
	var bool bool1;
	var Qword qword1;
	var float float1;
	var byte byte1;
	var int int1;
	var FakeData_X.FakeDataEnum enum1;
	var FakeData2 struct2;

	structdefaultproperties
	{
		array1.Empty
		string1=""
		
		name1=None
		array2.Empty
		array3.Empty
		bool1=false
		
		float1=0.0
		byte1=0
		int1=0
		enum1=FakeData_1
		
	}
};

struct native FakeData4
{
	var FakeData2 struct2;
	var array<FakeData3> array1;
	var FakeData1 struct1;
	var array<FakeData2> array2;
	var string string1;
	var name name1;
	var bool bool1;
	var Qword qword1;
	var float float1;
	var byte byte1;
	var int int1;
	var FakeData_X.FakeDataEnum enum1;

	structdefaultproperties
	{
		
		array1.Empty
		
		array2.Empty
		string1=""
		name1=None
		bool1=false
		
		float1=0.0
		byte1=0
		int1=0
		enum1=FakeData_1
	}
};

var int RandomSeed;
var FakeData1 Data1;
var FakeData2 Data2;
var FakeData3 Data3;
var FakeData4 Data4;