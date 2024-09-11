--Another parent wants to send their child to a district with few other students.
--In 9.sql, write a SQL query to find the name (or names) of the school district(s) with the single least number of pupils.
--Report only the name(s).

--use expenditures.pupils to verify if least number of pupils is in order of least to greatest
SELECT name FROM districts
JOIN expenditures ON expenditures.district_id = districts.id
ORDER BY expenditures.pupils
LIMIT 1
;



