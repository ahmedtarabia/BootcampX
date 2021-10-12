SELECT students.name as student_name, count(assistance_requests.*) as total_assistances
FROM students
JOIN assistance_requests ON students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;