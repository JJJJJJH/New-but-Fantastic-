#197. Rising Temperature
#my error code was so close to this one until I found datediff()!!

# Write your MySQL query statement below
select t.Id
from Weather t, Weather y
where datediff(t.RecordDate, y.RecordDate) = 1  and t.Temperature > y.Temperature