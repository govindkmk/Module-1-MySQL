create database student_management_system;

use student_management_system;


			## Department Table ##

create table department(
	d_ID int(11) primary key,
    d_name varchar(50),
    d_code varchar(20)
);
alter table department MODIFY d_code varchar(30);
insert into department(d_ID, d_name, d_code)
	values(1, 'Computer Science', 'BSCS'),
		  (2, 'Telecommunication', 'TL'),
		  (3, 'Computer System', 'BECS'),
          (4, 'Electrical Engineering', 'BEE'),
          (5, 'Software Engineering', 'SW'),
          (6, 'Biomedical', 'BEM');

select * from department;


				## Course Table ##


create table course(
	c_ID int(11) primary key,
    c_name varchar(40),
    c_code varchar(20),
    c_marks int(11)
);



insert into course(c_ID, c_name, c_code, c_marks)
	values(1001, 'Computer Programming', 'CP',.100),
		  (1002, 'Computer Fundamentals', 'CF', 100),
          (1003, 'Basic Electronics', 'BE', 100),
          (1004, 'Androind Development', 'AD', 100),
          (1005, 'Web Technologies', 'WT', 100),
          (1006, 'Applied Physics', 'AP', 100),
          (1007, 'Microprocessor & Embeded System', 'MPES', 100),
          (1008, 'Data Structure', 'DSA', 100),
          (1009, 'Mircro Controller', 'MCC', 100),
          (1010, 'Software Engineering', 'SE', 100);

select * from course;



			## Student Table ##


create table student(
	s_ID int(11) primary key,
	s_rollNumber varchar(20),
    s_name varchar(30),
    s_fatherName varchar(30),
    s_age int(11),
    s_email varchar(40),
    d_ID int(11),
    foreign key(d_ID) references department(d_ID)
);


insert into student(s_ID, s_rollNumber, s_name, s_fathername, s_age, s_email, d_ID)
	values(101, '20BSCS035', 'Govind Kumar', 'Mukesh', 21, 'govindkk152@gmail.com', 1),
		  (102, '20BECS008', 'Hammas Khan', 'Naheed Hussain', 21, 'hammas12@gmail.com', 3),
          (103, '19BEE024', 'Tauqeer Ahmed', 'Jaan Muhammad', 23, 'tauqeera33@gmail.com', 4),
          (104, '22BEM007', 'Qadir Bux', 'Sarwar Solangi', 21, 'buxqadir42@gmail.com', 6),
          (105, '21BSCS001', 'Wassay Abbasi', 'Khattak Abbasi', 22, 'wasayabbasi01@gmail.com', 1),
          (106, '19TL023', 'Ahmed Jan', 'Jan Qazi', '24', 'ahmedqazi131@gmail.com', 2),
          (107, '20SW032', 'M Suleman', 'M Serai', 22, 'seraisuleman42@gmail.com', 5),
          (108, '18BEE029', 'Tushar Lakhani', 'Kelash Lakhani', 23, 'tusharlak87@gmail.com', 4),
          (109, '20BEM003', 'Noman Sarwar', 'Sarwar Khan', 22, 'nomansarwar57@gmail.com', 6),
          (110, '21BECS015', 'Saifullah Korai', 'M Korai', 20, 'saifullahk63@gmail.com', 3);
          

select * FROM student;



			## Student Course Data Table ##
            

create table student_course_data( 
	s_ID int(11),
    c_ID int(11),
    marks_Obtained int(11),
    foreign key(s_ID) references student(s_ID),
    foreign key(c_ID) references course(c_ID)
);


insert into student_course_data( s_ID, c_ID, marks_Obtained)
	values(101, 1001, 88),
		  (101, 1002, 85),
          (101, 1008, 91),
          (101, 1010, 80),
          (101, 1004, 93),
          (102, 1001, 87),
          (102, 1002, 78),
          (102, 1005, 81),
          (102, 1004, 90),
          (102, 1007, 83),
          (103, 1003, 70),
          (103, 1002, 68),
          (103, 1005, 84),
          (103, 1007, 77),
          (103, 1008, 83),
          (104, 1003, 59),
          (104, 1002, 76),
          (104, 1005, 85),
          (104, 1007, 91),
          (104, 1010, 87),
          (105, 1003, 82),
          (105, 1005, 55),
          (105, 1004, 73),
          (105, 1006, 45),
          (105, 1009, 89),
          (106, 1005, 64),
          (106, 1006, 66),
          (106, 1008, 55),
          (106, 1009, 71),
          (106, 1010, 73),
          (107, 1002, 67),
          (107, 1004, 82),
          (107, 1006, 63),
          (107, 1008, 75),
          (107, 1010, 69),
          (108, 1001, 33),
          (108, 1003, 46),
          (108, 1005, 51),
          (108, 1007, 64),
          (108, 1009, 59),
          (109, 1001, 66),
          (109, 1002, 91),
          (109, 1004, 76),
          (109, 1008, 83),
          (109, 1010, 72),
          (110, 1002, 85),
          (110, 1005, 77),
          (110, 1006, 79),
          (110, 1008, 80),
          (110, 1009, 87);




select * from student_course_data;