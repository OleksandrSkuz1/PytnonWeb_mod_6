--Знайти список студентів у певній групі.

SELECT s.full_name AS student_name
FROM students s
JOIN groups g ON s.group_id = g.id
WHERE g.name = 'food';


