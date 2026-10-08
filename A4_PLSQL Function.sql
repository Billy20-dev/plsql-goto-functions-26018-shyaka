SET SERVEROUTPUT ON;
DECLARE
    v_result VARCHAR2(50);
BEGIN
    v_result := check_number(0);
    DBMS_OUTPUT.PUT_LINE('The result is: ' || v_result);
END;
/