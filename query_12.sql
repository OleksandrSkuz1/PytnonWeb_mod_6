--Оцінки студентів у певній групі з певного предмета на останньому занятті.

SELECT 
    st.full_name AS student_name,
    grp.name AS group_name,
    subj.name AS subject_name,
    g.grade AS grade,
    last_grade.max_date AS last_grade_date
    
FROM students st

JOIN grades g ON st.id = g.student_id
JOIN subjects subj ON g.subject_id = subj.id
JOIN groups grp ON st.group_id = grp.id
JOIN (
    SELECT 
        student_id,
        subject_id,
        MAX(grade_date) AS max_date
    FROM 
        grades
    GROUP BY 
        student_id,
        subject_id
) last_grade ON g.student_id = last_grade.student_id 
    AND g.subject_id = last_grade.subject_id 
    AND g.grade_date = last_grade.max_date

WHERE 
    grp.name = 'food' 
    AND subj.name = 'nation'
    AND st.full_name = 'Amy Richardson'; 


	