--Знайти оцінки студентів у окремій групі з певного предмета.

SELECT 
    stud.full_name AS student_name,
    grp.name AS group_name, 
    sub.name AS subject_name, 
    grd.grade 
    
FROM students stud

JOIN grades grd ON stud.id = grd.student_id
JOIN subjects sub ON grd.subject_id = sub.id
JOIN groups grp ON stud.group_id = grp.id

WHERE 
    grp.name = 'food' 
    AND sub.name = 'nation';


   
   
--Пояснення рядків:

--SELECT: Вибираємо стовпці, які будуть виведені в результаті запиту.
--grp.name AS group_name: Вибираємо назву групи з таблиці groups і надаємо їй псевдонім group_name.
--subj.name AS subject_name: Вибираємо назву предмета з таблиці subjects і надаємо їй псевдонім subject_name.
--s.full_name AS student_name: Вибираємо повне ім'я студента з таблиці students і надаємо йому псевдонім student_name.
--g.grade: Вибираємо оцінку з таблиці grades.
--FROM students s: Вказуємо, що вибірка здійснюється з таблиці students, яка має псевдонім stud.
--JOIN: З'єднуємо таблиці grades, subjects і groups за допомогою відповідних ключів.
--WHERE: Встановлюємо умови фільтрації, де ми вибираємо лише записи, де назва групи дорівнює 'food' і назва предмета дорівнює 'nation'.  

