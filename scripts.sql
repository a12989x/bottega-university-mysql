-- Group students by courses
select s.first_name, c.name, g.grade 
from students_courses sc
join students s
on sc.students_courses_students_id = s.id
join courses c
on sc.students_courses_courses_id = c.id
join grades g
on s.id = g.grades_students_id
order by c.name ASC;

-- Average grade by professor 
select p.first_name, c.name, avg(g.grade)
from professors p
join courses c
on c.courses_professors_id = p.id
join grades g
on c.id = g.grades_courses_id
group by c.name;

-- Top grades by each student
select  s.first_name, c.name, MAX(g.grade)
from students s
join students_courses sc
on s.id = sc.students_courses_students_id
join grades g
on s.id = g.grades_students_id
join courses c
on g.grades_courses_id = c.id
group by s.first_name;


-- Summary of Average grade by course ordered by most difficult
select c.name, AVG(g.grade)
from courses c
join grades g
on c.id = g.grades_courses_id
group by c.name
order by AVG(g.grade) ASC;

-- Most Common Student/Professor
select count(*), s.first_name, p.first_name
from students s
join students_courses sc
on s.id = sc.students_courses_students_id
join courses c
on sc.students_courses_courses_id = c.id
join professors p
on c.courses_professors_id = p.id
group by s.first_name, p.first_name
order by count(*) desc;