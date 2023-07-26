SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS total_submisions
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assignment_submissions ON students.id = student_id
GROUP BY cohort
ORDER BY total_submisions DESC;