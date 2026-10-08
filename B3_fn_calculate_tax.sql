CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary IN NUMBER
)
RETURN NUMBER
IS
    v_tax NUMBER;
BEGIN
    IF p_salary <= 500000 THEN
    v_tax := p_salary * 0.10;
    ELSIF p_salary <= 1000000 THEN
    v_tax := p_salary * 0.20;
    ELSE
    v_tax := p_salary * 0.30;
    END IF;
    RETURN v_tax;
END;
/