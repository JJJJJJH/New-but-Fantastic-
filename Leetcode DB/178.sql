#178. Rank Scores
#This is a great question, I cost time too but I like the challenge like this.

# Write your MySQL query statement below
select s1.Score,count(s2.Score) as 'Rank'
from Scores s1, (select distinct Score from Scores)as s2
where s2.Score >= s1.Score
group by s1.Id, s1.Score
order by s1.Score desc