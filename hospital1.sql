create table hospital(drid varchar(20)primary key,drname varchar(25),dept varchar(20),qualification varchar(20),experience int);
insert into hospital values('d002','pooja','neurology','MBBS','7')
insert into hospital values('d003','nimaa','neurology','MBBS','4')
insert into hospital values('d004','seetha','physiology','MD','8')
insert into hospital values('d005','sumi','dermetology','MD','10')
insert into hospital values('d006','kiran','pediatrisian','MBBS','7')
select * from hospital

select * from hospital where qualification='MD'


select * from hospital where experience >5 and qualification not in ('MD')

select drname from hospital where dept='dermetology'

update hospital set experience=5 where drid<'d003' 

delete from hospital where drid='d005'

select * from hospital
