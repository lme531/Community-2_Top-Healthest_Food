
-- Load the table from the view using an ad hoc SQL script.
------------------------------------------------------------------------------------------------------
--Q1:-What is the number one healthiest food with the hightest Antioxidant Score?

--A1:-Lets ask the T-SQL sever for a solution--

--Solution

-----------------------------------------------------------------------------------------------------

--1) Reload Data

TRUNCATE TABLE dbo.t_Top100HealthiestFoodInTheWorld;
		INSERT INTO dbo.t_Top100HealthiestFoodInTheWorld

			SELECT TOP 1 Category, [Antioxidant Score]
					FROM dbo.v_Top100HealthiestFoodInTheWorld_load AS V
								ORDER BY [Antioxidant Score];

--2) Review Result

				SELECT t.*
					FROM dbo.t_Top100HealthiestFoodInTheWorld AS t;

