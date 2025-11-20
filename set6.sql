create table ailors(
    sid int,
    sname varchar(20),
    age int,
    rating int
);
select *from ailors;

create table oats(
    bid int,
    bname varchar(30),
    color varchar(20)
);
select *from oats;

create table eseves(
    sid int,
    bid int,
    day varchar(20)
);
select *from eseves;

alter table ailors add constraint unique_rating unique(rating);

insert into ailors values(101,'harito',30,9);
insert into ailors values(102,'a',29,8);
insert into ailors values(103,'b',30,10);
insert into ailors values(104,'c',31,6);

insert into oats values(1,'xxx','green');
insert into oats values(2,'yyy','red');
insert into oats values(3,'zzz','green');
insert into oats values(4,'xyx','blue');


select sname from ailors
where rating>all(select rating from ailors where sname='harito');

select sname,rating from ailors
where rating =(select max(rating)from ailors);

select s.sname from  ailors s
join eseves r on s.sid=r.sid
group by s.sname
having count(distinct r.bid)>=2;


insert into eseves values(101,1,'25-09-25');
insert into eseves values(101,3,'20-09-25');
insert into eseves values(102,4,'25-03-25');
insert into eseves values(103,2,'25-04-25');


 select sname, rating from ailors
 where rating=(select max(rating) from ailors);

