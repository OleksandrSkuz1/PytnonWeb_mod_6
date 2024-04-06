--Знайти які курси читає певний викладач.

SELECT s.id AS subject_id, s.name AS subject_name
FROM Subjects s
JOIN Teachers t ON s.teacher_id = t.id
WHERE t.full_name = 'Rebecca Nicholson';





