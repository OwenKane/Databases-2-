SET SERVEROUTPUT ON
DECLARE
  useid APPLIANCE.MANUFACTOR_ID%TYPE:=&Enter_Maunfactures_ID;
  BEGIN
    IF manufacturer_exists(useid) THEN
      dbms_output.put_line('Manufacture exists');
    ELSE
      dbms_output.put_line('Manufacture does not exists');
    END IF;
EXCEPTION
WHEN OTHERS THEN
  dbms_output.put_line('Error occurred '||SQLCODE||SQLERRM);
END;