create database Ironhack;
use Ironhack;
create table students ( st_id integer Primary key, Name varchar(30), Course_id Integer);
Create table courses (c_id Integer Primary Key, Title varchar(20), Duration Integer);

Insert into courses
value (1,"DA", 45), (2, "Web", 45), (3, "DA_PT", 45);
select * from courses;
Insert into students
value (123, "Giang Le", 1), (234, "Daniel", 2), (256, "Victoire Rey", 1);
select * from students;
Insert into students
value (457, "Sandra", 5);

select students.name, courses.title
from students 
left join courses
on students.course_id = courses.c_id
Union
select students.name, courses.title
from students 
right join courses
on students.course_id = courses.c_id;