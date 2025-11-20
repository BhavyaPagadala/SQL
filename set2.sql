create table branch (
    bname varchar2(20) primary key,
    yoj int,
    intake int
);

create table student (
    regdno int primary key,
    name varchar(30),
    age int,
    bname varchar(20),
    perc number(5,2),
    foreign key (bname) references branch(bname)
);

insert into branch values ('cse', 2022, 120);
insert into branch values ('it', 2022, 90);
insert into branch values ('ece', 2022, 100);

insert into student values (101, 'ravi', 20, 'cse', 72.5);
insert into student values (102, 'sita', 19, 'it', 65.0);
insert into student values (103, 'arjun', 21, 'ece', 55.0);
insert into student values (104, 'megha', 22, 'cse', 81.0);
insert into student values (105, 'varun', 24, 'it', 59.0);
insert into student values (106, 'kiran', 17, 'cse', 92.0);

select *from student
where bname in ('cse', 'it');

select name
from student
where bname = 'cse'
  and perc > 60;

select name
from student
where perc = (select max(perc) from student);

select name
from student
where age between 15 and 30;
