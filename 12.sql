--A parent asks you for advice on finding the best public school districts in Massachusetts.
--In 12.sql, write a SQL query to find public school districts with above-average per-pupil expenditures
--and an above-average percentage of teachers rated “exemplary”.

--Your query should return the districts’ names, along with their per-pupil expenditures and percentage of teachers rated exemplary.
--Sort the results first by the percentage of teachers rated exemplary (high to low), then by the per-pupil expenditure (high to low).

WITH avg_expend AS (
    SELECT AVG(per_pupil_expenditure) AS avg_expend
    FROM expenditures
),
avg_exemp AS (
    SELECT AVG(exemplary) AS avg_exemp
    FROM staff_evaluations
)
SELECT districts.name, expenditures.per_pupil_expenditure, staff_evaluations.exemplary
FROM districts

JOIN expenditures ON districts.id = expenditures.district_id
JOIN staff_evaluations ON districts.id = staff_evaluations.district_id

WHERE expenditures.per_pupil_expenditure > (SELECT avg_expend FROM avg_expend)
AND staff_evaluations.exemplary > (SELECT avg_exemp FROM avg_exemp)
AND districts.type = 'Public School District'
ORDER BY exemplary
DESC, per_pupil_expenditure DESC;

--WHERE districts.type = 'Public School District'
--AND expenditures.per_pupil_expenditure < ;

