SET SERVEROUTPUT ON;
DECLARE
    v_salary NUMBER := 800000;
BEGIN
    IF v_salary >= 800000 THEN
        GOTO high_salary;
    ELSE
        GOTO normal_salary;
    END IF;
    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary is HIGH.');
    GOTO finish;
    <<normal_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary is NORMAL.');
    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary review completed.');
END;
/