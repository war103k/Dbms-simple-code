create table salesman(s_no int constraint pkey primary key,s_name varchar(50) not null,place varchar(100),phone int unique);
create table salesorder(o_no int primary key,o_date date not null,s_no int constraint fkey references salesman(s_no),del_type char(1),
						check(del_type in('p','f')),o_status varchar(50) check(o_status in('in process','fullfilled',
																						   'back order','cancelled')));
insert into salesman values(101,'babu','thrissur',773658),
                           (102,'ramesh','kollam',974439),
                           (103,'ramu','palakkad',924928);
insert into salesorder values(1001,'10/2/1999',101,'p','in process'),
                             (1011,'10/3/2002',102,'f','fullfilled'),
							 (1021,'12/3/2002',103,'p','back order');
select * from salesman;
select * from salesorder;
alter table salesman drop constraint pkey;
alter table salesorder drop constraint fkey;
alter table salesorder drop constraint salesorder_del_type_check;
alter table salesman add primary key (s_no);
alter table salesorder add foreign key (s_no) references salesman (s_no);
drop table salesorder;
drop table salesman;




																						   
																						   
