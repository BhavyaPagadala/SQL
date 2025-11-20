SET SERVEROUTPUT ON;
DECLARE
    str VARCHAR2(50) := 'Bhavya';   
    rev VARCHAR2(50) := '';
    i   NUMBER;
BEGIN
    FOR i IN REVERSE 1..LENGTH(str) LOOP
        rev := rev || SUBSTR(str, i, 1);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Original String: ' || str);
    DBMS_OUTPUT.PUT_LINE('Reversed String: ' || rev);
END;
/

create table dep (
    deptno int primary key,
    dname varchar(30),
    location varchar(30)
);

create table em (
    empno int primary key,
    ename varchar(30),
    job varchar(20),
    hiredate varchar(20),
    salary decimal(10,2),
    deptno int,
    foreign key (deptno) references dep(deptno)
);

insert into dep values (10, 'accounting', 'delhi');
insert into dep values (20, 'research', 'mumbai');
insert into dep values (30, 'sales', 'chennai');

insert into em values (101, 'adsam', 'clerk', '2023-01-01', 1500, 10);
insert into em values (102, 'alan', 'manager', '2022-06-15', 3000, 20);
insert into em values (103, 'james', 'analyst', '2021-03-20', 2500, 10);
insert into em values (104, 'lucas', 'salesman', '2020-11-05', 2000, 30);
insert into em values (105, 'susan', 'clerk', '2023-05-12', 1800, 20);