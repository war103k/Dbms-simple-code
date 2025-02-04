create table product(p_code int primary key,p_name varchar(30),category varchar(30),quantity int,price int);
insert into product values(1000,'lux','bath soap',150,40);
insert into product values(1001,'vin','dish bar',150,28);
insert into product values(1002,'sabari','washing soap',180,52);
insert into product values(1003,'colgate','paste',250,82);
insert into product values(1004,'lifeboy','bath soap',500,38);
select * from product

select * from product where price between 20 and 50


select * from product where category not in ('bath soap')

