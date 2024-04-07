--Середній бал, який певний викладач ставить певному студентові.

SELECT 
    t.full_name AS teacher,
    st.full_name AS student,
    ROUND(AVG(grade), 2)
    
FROM grades grd

JOIN subjects subj ON grd.subject_id = subj.id
JOIN teachers t ON subj.teacher_id = t.id
JOIN students st ON grd.student_id = st.id

WHERE 
    st.full_name = 'Sandra Cox'
    AND t.full_name = 'Brian Brown'

GROUP BY 
    t.full_name, st.full_name;

