#620. Not Boring Movies 
#so glad mod is '%' and != is 'is not'
# Write your MySQL query statement below
select *
from cinema
where id%2 = 1 and description != 'boring'
order by rating desc