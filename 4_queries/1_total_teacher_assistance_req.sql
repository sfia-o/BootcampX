SELECT count(assistance_request.*) AS total_assistances, teachers.name
FROM assistance_request
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;