#626. Exchange Seats
#omg, this is a hard question for me. so hard to get the last person

# Write your MySQL query statement below
select
    case
        when id % 2 = 0 then id-1
        when id % 2 = 1 and id != (select count(id) from seat) then id+1
        else id
    end as id, student
from seat
order by id