
-- Turn the view into a table.
--Q1:-What is the healthiest food with the hightest Antioxidant Score?

--A1:-Lets ask the T-SQL sever for a solution--

-----------------------------------------------------------------------------------------------------------------------------
--Solution

DROP TABLE IF EXISTS dbo.t_Top100HealthiestFoodInTheWorld;

SELECT *

INTO dbo.t_Top100HealthiestFoodInTheWorld
FROM dbo.v_Top100HealthiestFoodInTheWorld_load;



    



    