create table  b_customer(accno int primary key,c_name varchar(20) ,place varchar(20));
create table  deposit(accno int references b_customer (accno),deposit_no int primary key,damount int);
create table  loan(accno int references b_customer (accno),loan_no int primary key,lamount int);
insert into  b_customer values (001,'Joseph','Thrissur'),
                               (002,'Sameo','Koratty'),
							   (003,'Leo','Chalakudy'),
							   (004,'Anna','Koonammochi'),
							   (005,'melbin','Chalakudy'),
							   (006,'Ann','Vaga');
insert into deposit values (001,001,25000),
                           (003,002,100000),
						   (005,003,150000);
						   
insert into loan values  (002,001,50000),
                         (004,002,150000),
						 (005,003,15000);
					
select * from b_customer
select b_customer.accno,b_customer.c_name, deposit.damount from b_customer,deposit where b_customer.accno=deposit.accno and deposit.accno not in (select loan.accno from loan);
select b_customer.accno,b_customer.c_name, loan.lamount from b_customer,loan where b_customer.accno=loan.accno and loan.accno not in (select deposit.accno from deposit );





drop table   b_customer;                                 