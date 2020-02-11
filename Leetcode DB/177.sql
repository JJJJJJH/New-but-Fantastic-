#177. Nth Highest Salary 
#this is not a cool question for me, 'n' tooks too much time.

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
set N = N-1;
  RETURN (
      # Write your MySQL query statement below.
      select 
            ifnull((
            select distinct Salary 
            from Employee
            order by Salary desc
            limit N,1),null 
      )as 'getNthHighestSalary'
      
  );
END