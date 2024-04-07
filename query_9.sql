--Знайти список курсів, які відвідує студент.

SELECT DISTINCT 
    subj.name AS subject
    
FROM subjects subj

JOIN grades g ON subj.id = g.subject_id
JOIN students st ON g.student_id = st.id
    
WHERE st.full_name = 'Gloria Rodriguez';
