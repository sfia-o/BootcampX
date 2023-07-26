SELECT count(assistance_request.*) AS total_assistances, students.name
FROM assistance_request
JOIN students ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;