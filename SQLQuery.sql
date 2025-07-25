with cte as (
	Select * from bike_share_yr_0
	union all
	Select * from bike_share_yr_1
)
select dteday, 
season, 
a.yr, 
weekday, 
hr, 
rider_type, 
riders, 
price,
COGS,
ROUND((riders * price),2) as revenue,
ROUND((riders * price) - COGS, 2) as profit
from cte as a  
left join  
cost_table as b
on a.yr = b.yr;

