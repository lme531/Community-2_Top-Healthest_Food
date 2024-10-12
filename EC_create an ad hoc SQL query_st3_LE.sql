--Q1:-What is the number one healthiest food with the hightest Antioxidant Score?

--A1:-Lets ask the T-SQL sever for a solution--

--Solution

select top 1 food as Category, [Antioxidant Score]

from [Top 100 Healthiest Food in the World]

order by [Antioxidant Score] desc;

