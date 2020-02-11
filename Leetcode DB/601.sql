#601. Human Traffic of Stadium

# Write your MySQL query statement below
SELECT DISTINCT a.*
FROM stadium a, stadium b, stadium c
WHERE a.people >= 100 AND b.people >= 100 AND c.people >= 100
AND (
    (a.id + 1 = b.id AND a.id + 2 = c.id) OR -- a, b, c
    (b.id + 1 = a.id AND b.id + 2 = c.id) OR -- b, a, c
    (c.id + 1 = b.id AND c.id + 2 = a.id)    -- c, b, a
)
ORDER BY a.id