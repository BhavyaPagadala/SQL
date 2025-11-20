Group by
syntax:
select column1,column2...
 from table_name
 GROUP BY col1,col2;
Order by 
syntax:
select column1,column2...
 from table_name
 order by col_name[AESC|DESC]; 

create table sailors(
    sid int,
    sname varchar(20),
    rating float,
    primary key(sid)
);
create table boats(
    bid int,
    bname varchar(20),
    color varchar(20),
    primary kry(bid)
);
create table reserves(
    sid int ,
    bid int,
    day varchar(20),
    foreign key(sid)references sailors(sid),
    foreign key(bid)references boats(bid)
);
alter table sailors
ADD constraint unique_rating uniaue(rating);
select sname from sailors 
where sid in(
    select sid in reserves where bid in(
        select bid from boats where color='red'
    )
);
select sname,age from  sailors;

select distinct sid from reserves 
where bid in(
        select bid from boats where color='red' or color='green'
);



