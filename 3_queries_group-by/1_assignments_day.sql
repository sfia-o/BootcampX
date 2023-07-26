SELECT assignments.day, COUNT(*) as total_submissions
FROM assignments
GROUP BY day
ORDER BY day;