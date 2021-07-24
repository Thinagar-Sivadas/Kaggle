-- Create Table
DECLARE @table NVARCHAR(MAX);
SET @table = 'DATA';

DECLARE @sql NVARCHAR(MAX);
SET @sql = '
		CREATE TABLE {database}.{schema}.' + @table +' (
		Title VARCHAR(MAX) NOT NULL,
		Release_Date DATE,
		Running_Time INT,
        Budget INT,
		Box_Office INT,
		IMDB INT,
		Metascore INT,
		Rotten_Tomatoes INT
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