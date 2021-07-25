-- Create Table
DECLARE @table NVARCHAR(MAX);
SET @table = 'DATA';

DECLARE @sql NVARCHAR(MAX);
SET @sql = '
		CREATE TABLE {database}.{schema}.' + @table +' (
		Title VARCHAR(MAX) NOT NULL,
		Release_Date DATE,
		Genre VARCHAR(MAX),
		MPAA_Rating VARCHAR(MAX),
        Total_Gross BIGINT,
		Inflation_Adjusted_Gross BIGINT
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