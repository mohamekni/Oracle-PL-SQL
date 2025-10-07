create or replace procedure get_salary (
   v_id in employees.employee_id%type
) is
   declare v_sal number;
begin
   select salary
     into v_sal
     from employees
    where employee_id = v_id;
   dbms_output.put_line('Salary: ' || v_sal);
end;
/



   set serveroutput on;
create or replace procedure isgood (
   v_value number
) is
   istrue boolean;
begin
   istrue := v_value > 50;
   if istrue is null then
      dbms_output.put_line('v_value is NULL');
   elsif istrue = true then
      dbms_output.put_line('v_value is greater than 50');
   elsif istrue = false then
      dbms_output.put_line('v_value is less than or equal to 50');
   end if;
end;
/
EXECUTE isGood(100);