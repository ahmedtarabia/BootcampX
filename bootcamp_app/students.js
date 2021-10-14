const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohortName = process.argv[2];
const limit = process.argv[3] || 5;

// Store all potentially malicious values in an array. 
const values = [`%${cohortName}%`, limit];

const queryString = `SELECT students.id as student_id, students.name as student_name, cohorts.name as cohort_name
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE $1
LIMIT $2;`

pool.query(queryString, values)

.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.student_name} has an id of ${user.student_id} and was in the ${user.cohort_name} cohort`);
  })
}).catch(err => console.error('query error', err.stack));
