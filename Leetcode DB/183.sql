#183. Customers Who Never Order 

# Write your MySQL query statement below
select Customers.Name as 'Customers'
from Customers
left join Orders on Customers.ID = Orders.CustomerID
where Orders.CustomerId is null