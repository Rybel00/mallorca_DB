create table course(
courseCode1 varchar(25) primary key, 
description varchar(25), 
units int, 
idfac int, 
room varchar(25), 
schedule varchar(25), 
foreign key (idfac) references faculty(idfac))
engine=InnoDB;