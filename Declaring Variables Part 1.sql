   set serveroutput on;

declare
   v_num1 number;
   v_num2 number;
   v_num3 number;
begin
   v_num1 := 10;
   v_num2 := v_num1 + 20;
   v_num3 := v_num1 + v_num2;
   dbms_output.put_line(v_num3);
end;