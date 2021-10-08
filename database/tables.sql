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
SET @table = 'COVID_19';

DECLARE @sql NVARCHAR(MAX);
SET @sql = '
		CREATE TABLE {database}.{schema}.' + @table +' (
		continent VARCHAR(MAX),
		country VARCHAR(MAX),
		date Date,
		total_cases INT,
		new_cases INT,
		total_deaths INT,
		new_deaths INT,
		icu_patients INT,
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
		Age_Group VARCHAR(MAX),
		Suicide INT,
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