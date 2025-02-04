create table emplo(eid int,ename varchar,designation varchar,salary int,dep varchar,age int)
insert into emplo values(666,'pavya','manager',67000,'sales',34)
insert into emplo values(555,'niya','assist manager',77000,'sales',55)
insert into emplo values(444,'Radha','accounting',47000,'sales',null)
insert into emplo values(333,'manu','manager',87000,'HR',54)
insert into emplo values(222,'ravi','assist manager',67000,'HR',43)
select * from emplo
select * from emplo where salary <50000;
select * from emplo where age is null
select eid,ename,designation from emplo
update emplo set salary = salary + 10000 where designation = 'manager'

                                                                            -