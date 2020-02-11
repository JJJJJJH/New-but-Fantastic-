#175. Combine Two Tables

# Write your MySQL query statement below
select FirstName, LastName, City, State
from Address 
right join Person 
    using (PersonID)
;