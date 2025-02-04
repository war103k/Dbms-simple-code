create table emb_salary(empo int ,ename varchar(25),dept varchar(25),salary int );
insert into emb_salary values(1,'arun','cs',6789);
insert into emb_salary values(2,'kavitha','cs',9654);
insert into emb_salary values(3,'manoj','commerce',75000);
insert into emb_salary values(4,'vidya','management',8780);
select * from emb_salary;


create or replace function average (department varchar(23))returns decimal as $$
declare 
avg1 decimal;
begin
select avg(salary)into avg1 from emb_salary group by dept having dept=$1;
return avg1;
end;
$$ language plpgsql;
select average ('cs'); 
