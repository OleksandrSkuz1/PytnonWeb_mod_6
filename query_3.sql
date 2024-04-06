--Знайти середній бал у групах з певного предмета.

SELECT s.group_id, ROUND(AVG(g.grade), 2) AS average_grade
FROM students s
JOIN grades g ON s.id = g.student_id
WHERE g.subject_id = subject_id 
GROUP BY s.group_id;
