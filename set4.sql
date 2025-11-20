create table student(
    regno varchar(20),
    name varchar(20),
    age int,
    bname varchar(20),
    perc float
);
create table branch(
    bname varchar(20),
    yoj int,
    intake int
);
insert into branch values('cse',2006,40);
insert into branch values('it',2015,200);
insert into branch values('eee',2004,70);
insert into branch values('ece',2008,80);



insert into student values(101,'a',25,'cse',95);
insert into student values(102,'b',24,'it',85);
insert into student values(103,'c',29,'ece',91);
insert into student values(104,'b',30,'eee',56);


alter table student
add constraint pk_student primary key(regdno);

alter table branch
add constraint pk_branch primary key(bname);

alter table student 
add constraint fk_student_branch 
foreign key(bname)
references branch(bname);

selct * from student where name like'%a';

select s.name from student s
join branch b on s.bname=b.bname 
where b.yoj=2008;


SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE circle_calc (p_radius IN NUMBER) IS
    area NUMBER;
    perimeter NUMBER;
BEGIN
    area := 3.14159 * p_radius * p_radius;
    perimeter := 2 * 3.14159 * p_radius;
    
    DBMS_OUTPUT.PUT_LINE('For Circle with radius ' || p_radius || ':');
    DBMS_OUTPUT.PUT_LINE('Area = ' || area);
    DBMS_OUTPUT.PUT_LINE('Perimeter = ' || perimeter);
END;
/

BEGIN
    circle_calc(5);
END;
/