create database institude;

use institude;

Create table students (
rollno int primary key,
name varchar (50),
marks int not null,
grade varchar (10),
city varchar (20)
);
drop database institude;

insert into students values(101,'rvi',76,"c",'pune');
insert into students values(102,'Ramu' ,92, 'B' , 'Delhi');
insert into students values(103,'Rahul' ,77, 'C' , 'Noida');
insert into students values(105,'Dhruv' ,90, 'A' , 'utthrakhand');
insert into students values(107,'Kirtika' ,72, 'D' , 'Delhi');
insert into students values(109,'Himanshi' ,98, 'A' , 'Mumbai');

select * from students;


create table Deprtment(
id int primary key,
name varchar (20)
);

insert into deprtment values (101, 'English');
insert into deprtment values (102, 'It');

select * from deprtment;

create table Teachers(
id int primary key,
name varchar (20),
deprtment_id int,
foreign key (deprtment_id) references deprtment (id)
on update cascade
on delete cascade
);


insert into Teachers values (101, 'Aman', 101);
insert into Teachers values (102, 'Adam', 102);


alter table students
add column age int not null default 20;


alter table students
change age stu_age int;

select * from teachers;

select * from students;


alter table students
change age stu_age int;
 
 alter table students
 add column age int not null default 20;
 
 alter table students
 Modify column age varchar (2);
 
insert into students 
 (rollno, name, marks, grade, city, stu_age)
 values 
 (111, 'vershar', 67, 'F', 'Up', 26);
 
 
 alter table students
 change name full_name varchar (20);


delete from students
where marks < 80;


alter table students
drop column grade;



