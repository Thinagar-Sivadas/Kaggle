-- Create View
-- USE {database};

-- DECLARE @view NVARCHAR(MAX);
-- SET @view = 'TEST_VIEW';

-- DECLARE @sql NVARCHAR(MAX);
-- SET @sql = '
--         CREATE VIEW {schema}.' + @view + ' AS
-- 		SELECT * FROM {database}.{schema}.CHEVY';

-- IF OBJECT_ID('{schema}.' + @view, 'V') IS NOT NULL
-- 	BEGIN
-- 		PRINT 'View ' + @view + ' exists';
-- 	END
-- ELSE
-- 	BEGIN
-- 		EXEC(@sql);
-- 		PRINT 'View ' + @view + ' created';
-- 	END