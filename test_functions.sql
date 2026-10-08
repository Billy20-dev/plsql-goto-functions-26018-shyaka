SELECT employee_id,
       first_name,
       last_name,
       department_id,
       fn_dept_name(department_id) AS department_name
FROM employees
WHERE employee_id = 101;