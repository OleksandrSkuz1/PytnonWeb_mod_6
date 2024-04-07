--Список курсів, які певному студенту читає певний викладач.

SELECT 
	st.full_name AS student,
	t.full_name AS responsible_teacher,
    subj.name AS subject
    
FROM subjects subj

JOIN grades grd ON subj.id = grd.subject_id
JOIN students st ON grd.student_id = st.id
JOIN teachers t ON subj.teacher_id = t.id

WHERE 
    st.full_name = 'Brandon Torres'
    AND t.full_name = 'James Harris';

