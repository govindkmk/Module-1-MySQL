create database Tinder;

use Tinder;



create table addUser(
	userID int(11) primary key,
	firstName varchar(20),
    lastName varchar(20),
    email varchar(30),
    dateOfBirth date,
    sex varchar(20),
    descrip varchar(150)
);


create table addPicturesToUser(
	userID int(11),
    pictures varchar(200),
    foreign key(userID) references addUser(userID)
);


create table getUsers(
	userID int(11),
    minAge int(11),
    maxAge int(11),
    sex varchar(20),
    foreign key(userID) references AddUser(userID)
);

create table sendLike(
	senderUserID int(11),
    receiverUserID int(11),
	foreign key(senderUserID) references AddUser(userID),
    foreign key(receiverUserID) references getUsers(userID)
);
