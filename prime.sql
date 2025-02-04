create or replace function prime(n int) returns varchar(15) as $$
declare
i int;
begin
if n<=1 then
return 'Not prime';
end if;
for i in 2..n/2 loop
if n%i=0 then
return 'Not prime';
end if;
end loop;
return 'prime';
end;
$$ language plpgsql;

select prime(20);


select prime(17);