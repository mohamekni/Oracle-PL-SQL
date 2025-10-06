declare
   v_sal employees.salary%type;
begin
   select salary
     into v_sal
     from employees
    where employee_id = &sal_id;
   dbms_output.put_line('Salary: ' || v_sal);
end;
/