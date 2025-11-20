SET SERVEROUTPUT ON;
DECLARE
    a NUMBER := 10;
    b NUMBER := 20;
    c NUMBER := 30;
    largest NUMBER;
BEGIN
    IF (a >= b) AND (a >= c) THEN
        largest := a;
    ELSIF (b >= a) AND (b >= c) THEN
        largest := b;
    ELSE
        largest := c;
    END IF;
    DBMS_OUTPUT.PUT_LINE('The largest number is: ' || largest);
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

delete from sailor 
where age>30 and rating<10;

select distinct b.color from boats B
join resserves r on b.bid=r.bid
join sailors on s.sid=r.sid
where s.sname='LUBBER';

select rating,MIN(age) as youngest_age
from sailors
group by rating;

select age from sailors 
where sname like 'B%B' and len(sname)>=3;

