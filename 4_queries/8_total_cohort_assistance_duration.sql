SELECT cohorts.name as cohort_name, SUM(completed_at - started_at) as total_duration
from assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration;