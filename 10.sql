--In Massachusetts, school district expenditures are in part determined by local taxes on property (e.g., home) values.
--In 10.sql, write a SQL query to find the 10 public school districts with the highest per-pupil expenditures.
--Your query should return the names of the districts and the per-pupil expenditure for each.

--Use districts.type to verify 10 'Public School District'
SELECT per_pupil_expenditure, districts.name
FROM expenditures
JOIN districts ON districts.id = expenditures.district_id
WHERE districts.type = 'Public School District'
ORDER BY per_pupil_expenditure DESC
LIMIT 10;
