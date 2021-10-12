-- SELECT (
--   SELECT count(assignments)
--   FROM assignments
-- )-count(assignment_submissions) as total_incomplete
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';

-- SELECT count(students)
-- FROM students
-- JOIN cohorts on cohorts.id = cohort_id
-- GROUP BY cohorts;

-- SELECT avg(count(students))
-- FROM students
-- JOIN cohorts on cohorts.id = cohort_id
-- GROUP BY cohorts;

-- SELECT assignment_id
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';

SELECT assignments.name
FROM assignments 
WHERE id NOT IN
(
  SELECT assignment_id
  FROM assignment_submissions
  JOIN students ON students.id = student_id
  WHERE students.name = 'Ibrahim Schimmel'
);