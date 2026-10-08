CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id IN employees.employee_id%TYPE
)
RETURN VARCHAR2
IS
    v_salary employees.salary%TYPE;
    v_hire_date employees.hire_date%TYPE;
BEGIN
    SELECT salary, hire_date
    INTO v_salary, v_hire_date
    FROM employees
    WHERE employee_id = p_employee_id;
    IF v_salary IS NULL THEN
    RETURN 'INVALID: Salary is missing';
    ELSIF v_salary <= 0 THEN
    RETURN 'INVALID: Salary must be greater than zero';
    ELSIF v_hire_date IS NULL THEN
    RETURN 'INVALID: Hire date is missing';
    ELSIF v_hire_date > SYSDATE THEN
    RETURN 'INVALID: Hire date is in the future';
    ELSE
    RETURN 'VALID: Payroll information is correct';
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
    RETURN 'INVALID: Employee not found';
END;
/