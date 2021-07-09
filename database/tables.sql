-- Create Table
USE {database};
IF OBJECT_ID('{database}.{schema}.Test') IS NOT NULL
	BEGIN
		PRINT 'Database table Test exists';
	END
ELSE
    BEGIN
		CREATE TABLE {database}.{schema}.Test (
		Feature1 FLOAT(24),
		Feature2 FLOAT(24),
        Target INT
		);
		PRINT 'Database table Test created';
	END