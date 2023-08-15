create database E_Commerce_DB;

use E_Commerce_DB;


create table customer(
	c_id int(11) primary key,
    phoneNumber long,
    fullName varchar(40),
    dateOfBirth date,
    c_password varchar(30),
    c_confirmPassword varchar(30),
	verificationCode varchar(10),
    email varchar(50)
);

create table category(
	category_id int(11) primary key,
    category_name varchar(40)
);

create table sub_category(
	sc_id int(11) primary key,
    sc_name varchar(40),
    category_id int(11),
    foreign key(category_id) references category(category_id)
);

create table sub_sub_category(
	ssc_id int(11) primary key,
    ssc_name varchar(40),
    sub_category_id int(11),
    foreign key(sub_category_id) references sub_category(sc_id)
);

create table product(
	p_id int(11) primary key,
    p_code varchar(30),
    p_name varchar(40),
    p_description varchar(200),
    p_price decimal,
    category_id int(11),
    foreign key(category_id) references category(category_id)
);

create table order_(
	order_id int(11) primary key,
    order_number long,
    c_id int(11),
    order_date date,
    grand_total double,
    discount double,
    order_status varchar(20),
    foreign key(c_id) references customer(c_id)
);

create table order_details(
	od_id int(11) primary key,
    order_id int(11),
    product_id int(11),
    quantity int(11),
    rate double,
    total double,
    foreign key(order_id) references order_(order_id),
    foreign key(product_id) references product(p_id)
);

create table payment_method(
	pm_id int(11) primary key,
    payment_method varchar(40),
    account_number varchar(30),
    order_id int(11),
    customer_id int(11),
    total_amount double,
    payment_status varchar(11),
    foreign key(order_id) references order_(order_id),
    foreign key(customer_id) references customer(c_id)
);

create table rating(
	rating_id int(11) primary key,
    product_id int(11),
    customer_id int(11),
    stars int(11),
    comment_ varchar(60),
    foreign key(product_id) references product(p_id),
    foreign key(customer_id) references customer(c_id)
);

create table deals(
	deal_id int(11) primary key,
    deal_name varchar(50),
    deal_description varchar(80),
    start_date date,
    end_date date
);

create table deal_product(
	dael_product_id int(11) primary key,
    deal_id int(11),
    product_id int(11),
    discounted_price double,
    foreign key(deal_id) references deals(deal_id),
    foreign key(product_id) references product(p_id)
);
    