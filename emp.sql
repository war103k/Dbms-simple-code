create table employe(e_id int primary key,e_name varchar(30),salary int,dept varchar(20),age int);
insert into employe values(001,'melbin',70000,'sales',20);
insert into employe values(002,'abhinav',55000,'purchase',19);
insert into employe values(003,'leo',50000,'sales',21);
insert into employe values(004,'hari',40000,'purchase',22);
insert into employe values(005,'nevin',60000,'sales',20);
select * from employe;
select count(*) from employe;
select e_name,age from employe where age in(select MAX(age) from employe group by dept);
select dept,AVG(age) from employe group by dept;
select dept,AVG(salary) from employe group by dept;
select MIN(salary) from employe;
select count(*) from employe where dept='purchase';
select MAX(salary)-MIN(salary) as difference from employe;
select MAX(salary) from employe where dept='sales';


create table customer(cust_no varchar(5) primary key,cust_name varchar(20),age int,phone varchar(10));
insert into customer values('c100','anu',30,1111111111);
insert into customer values('c101','appu',31,2222222222);
insert into customer values('c102','achu',32,3333333333);
insert into customer values('c103','sachu',33,4444444444);
insert into customer values('c104','chandhu',35,5555555555);
select * from customer;
alter table customer add d_birth date;
select cust_name,phone from customer;

