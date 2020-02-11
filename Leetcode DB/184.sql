#184. Department Highest Salary 
#I learned max() here!! So useful!!

# Write your MySQL query statement below
select D.Name as Department, E.Name as Employee, E.Salary
from Employee E
join Department D on E.DepartmentId = D.Id
where (E.DepartmentId, E.Salary) in (select E.DepartmentId, max(E.Salary)
            from Employee E
            group by E.DepartmentId)