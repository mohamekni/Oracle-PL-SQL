declare
   v_event varchar2(100);
begin
   v_event := q'!Father's Day!';
   dbms_output.put_line(v_event);
   v_event := q'[Mother's Day]';
   dbms_output.put_line(v_event);
end;
/


declare
   v_name employees.first_name%type;
begin
   select first_name
     into v_name
     from employees
    where employee_id = 100;
   dbms_output.put_line('Hello ' || v_name);
end;
/


VARIABLE
g_salary NUMBER;
begin
   select g_salary
     into :g_salary
     from employees
    where employee_id = 100;
end;
/
PRINT g_salary;


VARIABLE
emp_salary NUMBER;
SET AUTOPRINT ON
begin
   select salary
     into :emp_salary
     from employees
    where employee_id = &emp_id;
end;
/