SELECT teachers.name AS teacher,
              students.name AS student,
              assignments.name AS assignment,
              (completed_at - started_at) as duration
FROM assistance_request
JOIN teachers ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
ORDER BY duration;