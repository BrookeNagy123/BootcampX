SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, COUNT(assistance_requests.id) as total_assistances
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02' 
GROUP BY teachers.name, cohorts.name
ORDER BY total_assistances