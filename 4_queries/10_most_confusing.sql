SELECT assignments.id AS id, 
            assignments.name AS name, 
            assignments.day AS day,
            assignments.chapter AS chapter, 
            count(assistance_request.*)
FROM  assignments
JOIN assistance_request ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY count(assistance_request.*) DESC;