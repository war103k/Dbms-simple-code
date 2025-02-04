create or replace function disp() returns trigger as $$
begin
raise notice'Record inserted successfully';
return new;
end;
$$ language plpgsql;

create trigger tr
after insert on b_cust
for each row
execute procedure disp();

insert into b_cust values(1328,'lolan','ckdy');