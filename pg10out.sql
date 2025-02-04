do $$
declare 
pid hospital.p_id%type;
pn hospital.p_name%type;
ag hospital.age%type;
d hospital.doctor%type;
pt hospital.p_type%type;
cc hospital.c_charge%type;
bt hospital.bloodtest_charge%type;
xc hospital.xraycharge%type;
oc hospital.othercharges%type;
tot hospital.total%type;
cr cursor for select * from hospital where p_type='outpatient'
order by p_name asc;
begin
open cr; 
raise notice ' P_ID     P_NAME     AGE        DOCTOR      P_TYPE      C_CHARGE    BLOODTEST_CHARGE    XRAYCHARGE  OTHERCHARGES  TOTAL ';
loop
fetch cr into pid,pn,ag,d,pt,cc,bt,xc,oc,tot;
exit when not found;
raise notice ' %        %      %         %      %      %         %                 %         %         %',pid,pn,ag,d,pt,cc,bt,xc,oc,tot;
end loop;
close cr;
end $$;