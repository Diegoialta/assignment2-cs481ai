-- Exercise 1
SELECT
    e.name AS employee_name,
    d.name AS department_name,
    e.salary,
    d.budget AS department_budget
FROM employees AS e
JOIN departments AS d
    ON e.department = d.name
ORDER BY e.name;

-- Exercise 2
SELECT
    e.name AS employee_name,
    m.name AS manager_name
FROM employees AS e
LEFT JOIN employees AS m
    ON e.manager_id = m.id
ORDER BY e.name;

-- Exercise 3
SELECT
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department
ORDER BY employee_count DESC, department;

-- Exercise 4
SELECT
    department,
    ROUND(AVG(salary), 2) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC, department;

-- Exercise 5
SELECT
    department,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary,
    SUM(salary) AS total_salary,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department
ORDER BY department;

-- Exercise 6
SELECT
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2
ORDER BY employee_count DESC, department;

-- Exercise 7
SELECT
    d.name AS department_name,
    d.budget,
    SUM(e.salary) AS total_salary,
    d.budget - SUM(e.salary) AS budget_difference
FROM departments AS d
JOIN employees AS e
    ON e.department = d.name
GROUP BY d.name, d.budget
ORDER BY d.name;
