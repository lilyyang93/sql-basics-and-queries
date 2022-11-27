-- select upper(first_name) from students where first_name like 'T%';
-- select * from classes where name like 'art%' or credits > 3;
-- select * from classes where name like 'art%' and credits > 3;
-- select * from classes where name like 'art%' and credits < 3;
-- select * from classes where credits < 3;
-- select * from classes where credits > 3 order by name desc; 
-- select * from classes where credits > 3 order by name asc;
-- select * from students inner join addresses on students.address_id = addresses.id; 
-- select students.id, students.first_name, students.last_name, students.birthdate, students.address_id, addresses.line_1, addresses.city, addresses.state, addresses.zipcode from students inner join addresses on students.address_id = addresses.id;
-- select students.id, students.first_name, students.last_name, students.birthdate, students.address_id, addresses.line_1, addresses.city, addresses.state, addresses.zipcode from students left join addresses on students.address_id = addresses.id;
-- SELECT students.id, students.first_name, students.last_name, addresses.city, addresses.state FROM students INNER JOIN addresses ON students.address_id = addresses.id WHERE addresses.state = 'Maryland';
--insert into students (first_name, last_name, birthdate) values ('Michelle', 'Dupont', '1982-02-11');
--update addresses set line_1='200 Church St.', city='Barrington', state='IL', zipcode='60010' where id = 2;
--select * from students;
--delete from students where id=7;
--select * from addresses;

-- All of Tianna's enrollments that she hasn't yet received a grade for, selected by her first name, not her student.id 
-- SELECT students.first_name, enrollments.class_id, classes.name, enrollments.grade
-- FROM enrollments
-- JOIN students
-- ON enrollments.student_id = students.id 
-- JOIN classes
-- ON enrollments.class_id = classes.id
-- WHERE students.first_name = 'Tianna'
-- AND enrollments.grade IS NULL; 

--select all rows from the classes table 
--SELECT * FROM classes

--select the name and credits from the classes table where the number of credits is greater than 3
--SELECT name FROM CLASSES WHERE credits > 3;

--all rows from the classes table where credits is an even number
--SELECT * FROM classes WHERE credits % 2 = 0;

--All of Tianna's enrollments that she hasn't yet received a grade for, selected by her first name, not her student.id 
--Tianna's student id = 1 
-- SELECT students.first_name, enrollments.class_id, classes.name, enrollments.grade
-- FROM enrollments
-- JOIN students
-- ON enrollments.student_id = students.id 
-- JOIN classes 
-- ON enrollments.class_id = classes.id 
-- WHERE students.first_name = 'Tianna'
-- AND enrollments.grade IS NULL; 

--All students born before 1986 who have a 't' in their first or last name.
-- SELECT * 
-- FROM students 
-- WHERE EXTRACT('year' FROM birthdate) < 1986
-- AND 
-- (lower(first_name) LIKE '%t%' 
-- OR 
-- lower(last_name) LIKE '%t%')

--The average age of all the students 
--SELECT AVG(AGE(birthdate)) FROM students;

--Addresses that have a space in their city name 
-- SELECT * FROM addresses
-- WHERE city LIKE '% %'

--students and their addresses that live in a city with more than one word in the city name 
-- SELECT students.first_name, addresses.line_1, addresses.city, addresses.state, addresses.zipcode 
-- FROM students 
-- JOIN addresses 
-- ON students.address_id = addresses.id 
-- WHERE addresses.city 
-- LIKE '% %'

--the average number of credits for classes offered at the school 
--SELECT round(AVG(credits)) FROM classes

--the first and last name of all students who have received an "A"
-- SELECT students.first_name, students.last_name
-- FROM enrollments
-- JOIN students 
-- ON enrollments.student_id = students.id 
-- JOIN classes
-- ON enrollments.class_id = classes.id 
-- WHERE enrollments.grade = 'A'

--each student's first name and the total credits they've enrolled for
-- SELECT students.first_name, SUM(classes.credits) 
-- FROM enrollments
-- JOIN students
-- ON enrollments.student_id = students.id
-- JOIN classes
-- ON enrollments.class_id = classes.id 
-- GROUP BY students.first_name

--the total number of credits each student has received a grade for 
-- SELECT students.first_name, SUM(classes.credits)
-- FROM enrollments
-- JOIN students
-- ON enrollments.student_id = students.id
-- JOIN classes
-- ON enrollments.class_id = classes.id 
-- WHERE enrollments.grade IS NOT NULL
-- GROUP BY students.first_name

--All enrollments, including the class name
-- SELECT enrollments.id, enrollments.student_id, enrollments.class_id, classes.name, classes.credits
-- FROM enrollments
-- JOIN classes
-- ON enrollments.class_id = classes.id 

--Students born between 1982-1985 (inclusive) 
-- SELECT students.first_name, students.birthdate
-- FROM students 
-- WHERE EXTRACT('year' FROM birthdate) BETWEEN 1982 AND 1985

--check all of andre's enrollments
-- SELECT * 
-- FROM enrollments
-- WHERE enrollments.student_id = 5







