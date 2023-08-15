create database Employee_DB;

use  Employee_DB;

create table Project(
	p_code varchar(20) primary key, 
    p_title varchar(40), 
    p_manager varchar(40), 
    p_budget bigint
);

create table Department(
	d_no varchar(20) primary key, 
    d_name varchar(50)
);

create table Employee(
	e_no varchar(20) primary key, 
    e_name varchar(40),
    d_no varchar(20),
    foreign key(d_no) references department(d_no)
);



insert into Project(p_code, p_title, p_manager, p_budget) 
	values('PC010', 'Pensions System', 'M Phillips', 24500),
		  ('PC045', 'Salaries System', 'H Martin', 17400),
          ('PC064', 'HR System', 'K Lewis', 12250);
          
          
Select * from project;

insert into Department(d_no, d_name)
	values('L004', 'IT'),
		  ('L023', 'Pensions'),
          ('L028', 'Database'),
          ('L008', 'Salary'),
          ('L009', 'HR');
          
Select * from Department;



insert into Employee (e_no, e_name, d_no)
	values('S10001', 'A Smith', 'L004'),
		  ('S10030', 'L Jones', 'L023'),
          ('S21010', 'P Lewis', 'L004'),
          ('S10010', 'B Jones', 'L004'),
          ('S31002', 'T Gilbert', 'L028'),
          ('S13210', 'W Richards', 'L008'),
          ('S10034', 'B James', 'L009');
          
          
          
          
create table all_data(
	e_no varchar(20),
    p_code varchar(20),
    hourly_rate double(7,2),
    foreign key(e_no) references employee(e_no),
    foreign key(p_code) references project(p_code)
);


insert into all_data( e_no, p_code, hourly_rate)
		values('S10001', 'PC010', 22.00),
			  ('S10030', 'PC010', 18.50),
              ('S21010', 'PC010', 21.00),
              ('S10010', 'PC045', 21.75),
              ('S10001', 'PC045', 18.00),
              ('S31002', 'PC045', 25.50),
              ('S13210', 'PC045', 17.00),
              ('S31002', 'PC064', 23.25),
              ('S21010', 'PC064', 17.50),
              ('S10034', 'PC064', 16.50),
              ('S10001', 'PC010', 22.00),
              ('S10010', 'PC045', 21.75),
              ('S31002', 'PC064', 23.25);

     
Select * from all_data;

alter table all_data rename Employee_Project;
