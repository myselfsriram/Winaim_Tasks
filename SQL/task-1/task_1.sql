# Write a query to find all employees who have been hired in the last year.

SELECT * FROM employees WHERE YEAR(hire_date) = YEAR(CURDATE()) - 1;


# Write a query to calculate the total salary expenditure for each department.

SELECT d.department_name, SUM(s.salary) AS total_salary_expenditure
FROM employees e
JOIN salaries s ON e.employee_id = s.employee_id
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

#Write a query to find the top 5 highest-paid employees along with their department names.

SELECT e.employee_id, e.first_name, e.last_name, d.department_name, s.salary
FROM employees e
JOIN salaries s ON e.employee_id = s.employee_id
JOIN departments d ON e.department_id = d.department_id
ORDER BY s.salary DESC
LIMIT 5;