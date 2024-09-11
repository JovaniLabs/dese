--Some cities have more public schools than others.
--In 4.sql, write a SQL query to find the 10 cities with the most public schools.
--Your query should return the names of the cities and the number of public schools within them, ordered from greatest number of public schools to least.
--If two cities have the same number of public schools, order them alphabetically.

SELECT city, COUNT(type) as "number of public schools"
FROM schools
WHERE type = 'Public School'

GROUP BY city
ORDER BY "number of public schools" DESC, city
LIMIT 10;
-- had a typo error on line 11 "number of public shcool" was the problem
--changed to "number of public schools"
