create database hospital_management_system;

use hospital_management_system;

create table department(
	id int(11) primary key,
    d_name varchar(40),
    d_code varchar(30)
);

create table staff(
	id int(11) primary key,
    staff_name varchar(40),
    contact_info long,
    specialization varchar(50),
    designation varchar(50),
    gender varchar(20),
    d_id int(11),
    foreign key(d_id) references department(id)
);

create table ward(
	id int(11) primary key,
    ward_number int(11),
    total_beds int(11),
    availability_status varchar(20)
);

create table bed(
	id int(11) primary key,
    bed_number int(11),
    availability_status varchar(20),
    ward_id int(11),
    foreign key(ward_id) references ward(id)
);

create table patient(
	id int(11) primary key,
    p_name varchar(40),
    date_of_birth date,
    gender varchar(20),
    address varchar(60),
    contact_info long
);

create table appointment(
	patient_id int(11),
    doctor_id int(11),
    appointment_date date,
    appointment_time time,
    foreign key(patient_id) references patient(id),
    foreign key(doctor_id) references staff(id)
);

create table payment_method(
	id int(11) primary key,
    patient_id int(11),
    total_cost double,
    payment_method varchar(40),
    payment_date date,
    foreign key(patient_id) references patient(id)
);

alter table appointment add column ward_id int(11) after doctor_id;
alter table appointment add constraint foreign key(ward_id) references ward(id);
alter table appointment add column bed_id int(11) after doctor_id;
alter table appointment add constraint foreign key(bed_id) references bed(id);
    

    
