--In 13.sql, write a SQL query to answer a question you have about the data! The query should:

--Involve at least one JOIN or subquery

--write a SQL query to output the schools name, district name, unsatisfactory, dropped
--and states sorted high to low dropped percentage
--also eliminate emppty data from staff_evaluations
--and should display only 10 schools

--What are the top 10 schools name with the highest dropped percentage with
--staff evaluations data?

SELECT schools.name
AS "School Name", districts.name
AS "district name", staff_evaluations.unsatisfactory, graduation_rates.dropped,
districts.state
FROM schools

JOIN staff_evaluations ON schools.district_id = staff_evaluations.district_id
JOIN graduation_rates ON schools.id = graduation_rates.school_id
JOIN districts ON schools.district_id = districts.id

WHERE staff_evaluations.unsatisfactory != 'NULL'

ORDER BY graduation_rates.dropped DESC
LIMIT 10
;

