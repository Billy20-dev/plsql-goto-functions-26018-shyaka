SELECT employee_id,
       first_name,
       last_name,
       salary,
       fn_annual_salary(employee_id) AS annual_salary,
       fn_years_of_service(employee_id) AS years_of_service,
       fn_calculate_tax(salary) AS tax
FROM employees;