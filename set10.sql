SET SERVEROUTPUT ON;
DECLARE
    student_name VARCHAR2(50) := 'Navya';
    marks        NUMBER := 75;
BEGIN
    IF marks >= 40 THEN
        DBMS_OUTPUT.PUT_LINE(student_name || ' has passed.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(student_name || ' has failed.');
    END IF;
END;
/
create table sailor (
    sid int primary key,
    sname varchar(30),
    age int,
    rating int
);

create table boat (
    bid int primary key,
    bname varchar(30),
    color varchar(15)
);

create table reservs (
    sid int,
    bid int,
    day varchar(100),
    foreign key (sid) references sailor(sid),
    foreign key (bid) references boat(bid)
);

insert into sailor values (1, 'ram', 25, 7);
insert into sailor values (2, 'sita', 30, 8);
insert into sailor values (3, 'arjun', 22, 9);
insert into sailor values (4, 'megha', 28, 6);
select *from sailor;

insert into boat values (101, 'speedster', 'red');
insert into boat values (102, 'wave', 'green');
insert into boat values (103, 'sunrise', 'blue');
insert into boat values (104, 'rocket', 'red');
select *from boat;

insert into reservs values (1, 101, '2025-01-05');
insert into reservs values (2, 102, '2025-01-10');
insert into reservs values (3, 101, '2025-01-12');
insert into reservs values (3, 102, '2025-01-13');
insert into reservs values (4, 103, '2025-01-14');
insert into reservs values (1, 104, '2025-01-15');

select *from reservs;

SELECT DISTINCT s.sname
FROM sailor s
JOIN reservs r 
ON s.sid = r.sid;

SELECT DISTINCT s.sid
FROM sailor s
JOIN reservs r ON s.sid = r.sid
JOIN boat b ON r.bid = b.bid
WHERE (b.color = 'red' or b.color='GREEN');

select sname from sailor where age=(select max(age) from sailor);
