#185. Department Top Three Salaries
#so many selects for sure, mentions me select in where

# Write your MySQL query statement below
select D.Name as 'Department', e.Name as 'Employee', e.Salary as Salary
from Employee e, Department d
where d.Id = e.DepartmentId and 
     (select count(distinct e2.Salary)
     from Employee e2
     where e.DepartmentId = e2.DepartmentId and
        e2.Salary > e.Salary) < 3