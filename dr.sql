create table hospital(d_id varchar(10)primary key,d_name varchar(50),dept varchar(50),qualification varchar(20),experience int);
insert into hospital values('D001','Ravi','Dermetology','MBBS',5);
insert into hospital values('D002','Raghav','Dermetology','MBBS',5);
insert into hospital values('D003','Manu','General Medicine','MBBS',6);
insert into hospital values('D004','Raghav','Gynocology','MD',5);
insert into hospital values('D005','Thilak','Spots medicine','MBBS',8);
select * from hospital;
select * from hospital where qualification='MD';
update hospital set qualification='MD' where d_id='D005';
select * from hospital where experience >5 and qualification not in('MD');
select * from hospital where dept='Dermetology';
update hospital set experience=5 where d_id='D003';
delete from hospital where d_id='D005';

		 




