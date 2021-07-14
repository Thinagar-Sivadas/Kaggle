-- Create Table
DECLARE @table NVARCHAR(MAX);
SET @table = 'DATA';

DECLARE @sql NVARCHAR(MAX);
SET @sql = '
		CREATE TABLE {database}.{schema}.' + @table +' (
		Title VARCHAR(MAX),
		Genre VARCHAR(MAX),
        Premiere DATE,
		Runtime INT,
		IMDB_Score FLOAT,
		Language VARCHAR(MAX)
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