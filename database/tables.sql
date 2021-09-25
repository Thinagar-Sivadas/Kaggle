-- Create Table
DECLARE @table NVARCHAR(MAX);
SET @table = 'FORBES';

DECLARE @sql NVARCHAR(MAX);
SET @sql = '
		CREATE TABLE {database}.{schema}.' + @table +' (
		ID INT IDENTITY(1,1) PRIMARY KEY,
		Name VARCHAR(MAX),
		NetWorth BIGINT,
		Country VARCHAR(MAX),
		Source VARCHAR(MAX),
		Rank INT,
        Age INT,
		Industry VARCHAR(MAX)
		);';

IF OBJECT_ID('{database}.{schema}.' + @table) IS NOT NULL
	BEGIN
		PRINT 'Database table ' + @table + ' exists';
	END
ELSE
    BEGIN
		EXEC(@sql);
		PRINT 'Database table ' + @table + ' created';
	END

GO

DECLARE @table NVARCHAR(MAX);
SET @table = 'INDIAN_IMDB';

DECLARE @sql NVARCHAR(MAX);
SET @sql = '
		CREATE TABLE {database}.{schema}.' + @table +' (
		ID INT IDENTITY(1,1) PRIMARY KEY,
		Title VARCHAR(MAX),
		Year_Of_Release SMALLINT,
		Genre VARCHAR(MAX),
		Director VARCHAR(MAX),
		Number_Of_Votes INT,
		IMDB_Rating FLOAT
		);';

IF OBJECT_ID('{database}.{schema}.' + @table) IS NOT NULL
	BEGIN
		PRINT 'Database table ' + @table + ' exists';
	END
ELSE
    BEGIN
		EXEC(@sql);
		PRINT 'Database table ' + @table + ' created';
	END

GO

DECLARE @table NVARCHAR(MAX);
SET @table = 'SUICIDE';

DECLARE @sql NVARCHAR(MAX);
SET @sql = '
		CREATE TABLE {database}.{schema}.' + @table +' (
		ID INT IDENTITY(1,1) PRIMARY KEY,
		State VARCHAR(MAX),
		Year INT,
		Cause VARCHAR(MAX),
		Male_14 INT,
		Male_15_29 INT,
		Male_30_44 INT,
		Male_45_59 INT,
		Male_60 INT,
		Total_Male INT,
		Female_14 INT,
		Female_15_29 INT,
		Female_30_44 INT,
		Female_45_59 INT,
		Female_60 INT,
		Total_Female INT,
		Total_Male_Female INT,
		);';

IF OBJECT_ID('{database}.{schema}.' + @table) IS NOT NULL
	BEGIN
		PRINT 'Database table ' + @table + ' exists';
	END
ELSE
    BEGIN
		EXEC(@sql);
		PRINT 'Database table ' + @table + ' created';
	END