use student_management_system;
select * from student;
select * from department;
desc student;
desc department;
select * from course;
select * from student_course_data;
desc student_course_data;
alter table course drop column c_marks;
alter table student_course_data drop column marks_obtained;
alter table department MODIFY d_code varchar(30);
alter table student_course_data add column obtained_marks int(11);
alter table student_course_data add column id int(11) primary key auto_increment after s_ID;

select s.s_ID, s.s_rollNumber, s.s_name, s.s_fatherName, s.s_age, s.s_email, d.d_name from student s INNER JOIN DEPARTMENT d ON s.d_ID = d.d_ID where s.s_ID = 101;

SELECT  s.s_name, c.c_name, scd.obtained_marks FROM STUDENT_COURSE_DATA scd INNER JOIN student s ON scd.s_ID = s.s_ID INNER JOIN COURSE c  ON scd.c_ID = c.c_ID WHERE scd.s_ID = 101;

SELECT  s.s_name, c.c_name, scd.obtained_marks FROM STUDENT_COURSE_DATA scd INNER JOIN student s ON scd.s_ID = s.s_ID INNER JOIN COURSE c  ON scd.c_ID = c.c_ID; 

ALTER TABLE student drop foreign key student_ibfk_1; 
alter table student ADD foreign key(d_ID) references department(d_ID) ON DELETE CASCADE ;
SHOW CREATE TABLE student;

alter table student_course_data drop foreign key student_course_data_ibfk_1;
alter table student_course_data drop foreign key student_course_data_ibfk_2; 

alter table student_course_data add foreign key(s_ID) references student(s_ID) ON DELETE CASCADE;
alter table student_course_data add foreign key(c_ID) references course(c_ID) ON DELETE CASCADE;