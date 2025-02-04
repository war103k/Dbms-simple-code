create table customer (cust_no varchar(5),cust_name varchar(15),age int,phone varchar(10))
insert into customer values('b12','achu',27,'9857445876')
insert into customer values('b13','ammu',36,'9554643599')
insert into customer values('b14','pavi',26,'945837945')
insert into customer values('b15','kunju',56,'8748456544')
insert into customer values('b16','gopu',54,'9858546444')
select * from customer
alter table customer add d_birth date
create table cust_phone as select cust_name,phone from customer
alter table customer drop column age
alter table customer alter column cust_name type varchar(25);
delete from customer
alter table customer rename to cust 
drop table cust
