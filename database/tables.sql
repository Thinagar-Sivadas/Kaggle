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
SET @table = 'LIFE_EXPECTANCY';

DECLARE @sql NVARCHAR(MAX);
SET @sql = '
		CREATE TABLE {database}.{schema}.' + @table +' (
		ID INT IDENTITY(1,1) PRIMARY KEY,
		Country VARCHAR(MAX),
		Year INT,
		Life_Expectancy FLOAT
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