-- Create Table
DECLARE @table NVARCHAR(MAX);
SET @table = 'STUDENT';

DECLARE @sql NVARCHAR(MAX);
SET @sql = '
		CREATE TABLE {database}.{schema}.' + @table +' (
		ID INT IDENTITY(1,1) PRIMARY KEY,
		Gender VARCHAR(MAX),
		Race_Ethnicity VARCHAR(MAX),
		Parent_Education_Level VARCHAR(MAX),
		Lunch VARCHAR(MAX),
        Test_Preparation_Course VARCHAR(MAX),
		Math_Score INT,
		Reading_Score INT,
		Writing_Score INT,
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