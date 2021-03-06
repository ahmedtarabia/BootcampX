SELECT students.name AS student_name, students.start_date AS student_startdate, cohorts.name AS cohort_name, cohorts.start_date AS cohort_startdate
FROM students JOIN cohorts ON cohorts.id = cohort_id
WHERE students.start_date != cohorts.start_date
ORDER BY cohorts.start_date;
