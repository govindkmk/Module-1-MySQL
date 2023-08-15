

use student_management_system;


select s.s_name, d.d_name 
from student s inner join department d 
ON s.d_ID = d.d_ID;

select sc.s_ID, c.c_name
from student_course_data sc inner join course c
ON sc.c_ID = c.c_ID;

select s.s_name, c.c_ID from student s inner join course c where s_ID = (select count(c_ID), s_ID from student_course_data);

select s_ID, sum(marks_obtained) from student_course_data;



