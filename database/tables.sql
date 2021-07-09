-- Create Table
USE {database};

DECLARE @table NVARCHAR(MAX);
SET @table = 'INDIA_COVID_19_STATEWISE_DATA';

DECLARE @sql NVARCHAR(MAX);
SET @sql = '
		CREATE TABLE {database}.{schema}.' + @table +' (
		State_UTs VARCHAR(MAX),
		Total_Cases INT,
        Active INT,
		Discharged INT,
		Deaths INT,
		Active_Ratio FLOAT(24),
		Discharge_Ratio FLOAT(24),
		Death_Ratio FLOAT(24)
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