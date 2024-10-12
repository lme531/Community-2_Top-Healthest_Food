
CREATE PROCEDURE  dbo.ups_t_Top100HealthiestFoodInTheWorld_load

AS

/*****************************************************************************************************************
NAME:    dbo.ups_Top100HealthiestFoodInTheWorld_load
PURPOSE: To create Top1 Healthiest Food In TheWorld_loadusing stored procedure..

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/12/2024   LELESHIN       1. Built this script for EC IT43


RUNTIME: 
Xm Xs

NOTES: 
Creating the script helped me to better understand how to tackle Q7 & Q8 using T-SQL for my data manipulation.
******************************************************************************************************************/

BEGIN

		
--1) Reload Data

TRUNCATE TABLE dbo.t_Top100HealthiestFoodInTheWorld;
		INSERT INTO dbo.t_Top100HealthiestFoodInTheWorld

			SELECT TOP 1 Category, [Antioxidant Score]
					FROM dbo.v_Top100HealthiestFoodInTheWorld_load AS V
								ORDER BY [Antioxidant Score];

--2) Review Result

				SELECT t.*
					FROM dbo.t_Top100HealthiestFoodInTheWorld AS t;


			END;

	GO

	