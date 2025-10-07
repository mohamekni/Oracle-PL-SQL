   set serveroutput on;
declare
   v_num1 number := &num1;
   cnum2  number cosntant := &num2;
   v_num3 number;
begin
   v_num3 := v_num1 + c_num2;
   dbms_output.put_line(v_num3);
end;
/


   set serveroutput on;
declare
   v_name varchar2(100);
begin
   dbms_output.put_line('Name: ' || v_name);
   v_name := 'Moha';
   dbms_output.put_line('Name: ' || v_name);
end;
/