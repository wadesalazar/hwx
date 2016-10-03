DROP TABLE WellData_Prep;

CREATE TABLE WellData_Prep (
API_WELLNO 	varchar(255)	,
WELL_NAME 	varchar(255)	,
COMPANY_NAME 	varchar(255)	,
OPERATOR_NUMBER 	varchar(255)	,
WELL_TYPE 	varchar(255)	,
MAP_SYMBOL 	varchar(255)	,
WELL_STATUS 	varchar(255)	,
DT_STATUS 	varchar(255)	,
DATE_SPUDDED 	varchar(255)	,
DATE_TOTAL_DEPTH 	varchar(255)	,
DATE_WELL_COMPLETED 	varchar(255)	,
SLANT 	varchar(255)	,
SURFACE_LONGITUDE 	varchar(255)	,
SURFACE_LATITUDE 	varchar(255)	,
BOTTOM_HOLE_LONGITUDE 	varchar(255)	,
BOTTOM_HOLE_LATITUDE 	varchar(255)	,
TRUE_VERTICAL_DEPTH 	varchar(255)	,
MEASURED_DEPTH 	varchar(255)	,
KICKOFF 	varchar(255)	,
DRILLED_DEPTH 	varchar(255)	,
ELEVATION 	varchar(255)
  )
  row format delimited fields terminated by "," stored as textfile TBLPROPERTIES("skip.header.line.count"="1");

  
LOAD DATA INPATH '/user/hdfs/wellDOS/wellspublic.csv' INTO TABLE WellData_prep;

DROP TABLE Expenses_prep;

CREATE TABLE Expenses_prep (
ChargeType	VARCHAR(255)	,
PaymentDate	VARCHAR(255)	,
VendorName	VARCHAR(255)	,
Amount VARCHAR(255)	,
VendorID	VARCHAR(255)	,
AccountNumber	VARCHAR(255)	,
AccountDescription	VARCHAR(255)	,
CheckNumber	VARCHAR(255)	,
PostDate	VARCHAR(255)	,
Well	VARCHAR(255)		
)
row format delimited fields terminated by "," stored as textfile TBLPROPERTIES("skip.header.line.count"="1");

LOAD DATA INPATH '/user/hdfs/wellDOS/Expenses.csv' INTO TABLE Expenses_prep;