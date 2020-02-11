#181. Employees Earning More Than Their Managers 

# Write your MySQL query statement below
select E.Name AS Employee
from Employee E
left join Employee M ON E.ManagerID = M.ID
where E.Salary > M.Salary
;