SELECT city, COUNT(*) AS "Public Schools"
--*** check if COUNT
--is correct as a subquery
--FROM(SELECT city
FROM schools
WHERE type = 'Public School'
GROUP BY city
HAVING COUNT (*) <= 3
ORDER BY "Public Schools" DESC, city
--)AS subquery
--***
;

