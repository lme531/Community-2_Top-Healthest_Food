--STEP 4: Turn the ad hoc SQL query into view
DROP VIEW IF EXISTS dbo.v_Top100HealthiestFoodInTheWorld_load;

GO

CREATE VIEW dbo.v_Top100HealthiestFoodInTheWorld_load
AS
/*****************************************************************************************************************
NAME:    Top 100 Healthiest Food in the World
PURPOSE: To create healthiest food with the highest Antioxidant Score

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     10/12/2024   LELESHIN       1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES: 
This created script has helped me understand Q4 and Q8 better---
 
******************************************************************************************************************/

select top 1 food as Category, [Antioxidant Score]-- The select statement will retrieve all the column from the 

from [Top 100 Healthiest Food in the World]

order by [Antioxidant Score] desc;

