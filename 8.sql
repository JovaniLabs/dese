--A parent wants to send their child to a district with many other students.
--In 8.sql, write a SQL query to display the names of all school districts and the number of pupils enrolled in each.

--Use COUNT(*) to verify if code total number of correct rows.
SELECT expenditures.pupils, districts.name
FROM expenditures
JOIN districts ON districts.id = expenditures.district_id
;

