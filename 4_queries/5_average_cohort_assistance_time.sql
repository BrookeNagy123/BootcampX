SELECT cohorts.name, AVG(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_time
FROM students
JOIN assistance_requests ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time ASC;
