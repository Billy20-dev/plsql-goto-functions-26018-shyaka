SELECT employee_id,
       first_name,
       last_name,
       salary,
       hire_date,
       fn_validate_payroll(employee_id) AS payroll_status
FROM employees;