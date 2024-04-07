--Знайти середній бал, який ставить певний викладач зі своїх предметів.

SELECT 
    t.full_name AS teacher_name, 
    sub.name AS subject_name,
    ROUND(AVG(gr.grade), 2) AS average_grade
    
FROM teachers t

JOIN subjects sub ON t.id = sub.teacher_id
JOIN grades gr ON sub.id = gr.subject_id

GROUP BY t.full_name, sub.name;


	