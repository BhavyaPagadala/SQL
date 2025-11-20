SET SERVEROUTPUT ON;
DECLARE
    n NUMBER := 5;        
    fact NUMBER := 1;
    i NUMBER;
BEGIN
    IF n < 0 THEN
        DBMS_OUTPUT.PUT_LINE('Factorial is not defined for negative numbers.');
    ELSIF n = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Factorial of 0 is 1');
    ELSE
        FOR i IN 1..n LOOP
            fact := fact * i;
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('Factorial of ' || n || ' is ' || fact);
    END IF;
END;
/

create table emp(
    empno int,
    ename varchar(20),
    ejob varchar(30),
    hiredate varchar(30),
    salary int,
    dept int
);
select *from emp;

create table dept(
    deptno int,
    dname varchar(20),
    dloc varchar(30)
);
select *from dept;

alter table emp
add constraint pk_emp primary key(empno);


alter table dept
add constraint pk_dept primary key(deptno);



insert into emp values(101,'a','clean','02-07-2025',1000,1);
insert into emp values(102,'b','mopping','03-07-2025',12000,2);
insert into emp values(103,'c','teacher','05-07-2025',10200,3);
insert into emp values(104,'d','principal','04-07-2025',10,4);

select dept,
MAX(salary) as highest_salary 
from emp 
group by dept ;


