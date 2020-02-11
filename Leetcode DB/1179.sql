#1179. Reformat Department Table
#for me, this code is too straight, but nice.

# Write your MySQL query statement below
SELECT 
    id, 
    max( if( month = 'Jan', revenue, null ) ) AS Jan_Revenue,
    max( if( month = 'Feb', revenue, null ) ) AS Feb_Revenue,
    max( if( month = 'Mar', revenue, null ) ) AS Mar_Revenue,
    max( if( month = 'Apr', revenue, null ) ) AS Apr_Revenue,
    max( if( month = 'May', revenue, null ) ) AS May_Revenue,
    max( if( month = 'Jun', revenue, null ) ) AS Jun_Revenue,
    max( if( month = 'Jul', revenue, null ) ) AS Jul_Revenue,
    max( if( month = 'Aug', revenue, null ) ) AS Aug_Revenue,
    max( if( month = 'Sep', revenue, null ) ) AS Sep_Revenue,
    max( if( month = 'Oct', revenue, null ) ) AS Oct_Revenue,
    max( if( month = 'Nov', revenue, null ) ) AS Nov_Revenue,
    max( if( month = 'Dec', revenue, null ) ) AS Dec_Revenue
FROM 
    Department
GROUP BY 
    id;