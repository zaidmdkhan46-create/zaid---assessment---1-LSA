#1
create database company_management;
USE company_management;

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing'),
(5, 'Sales'),
(6, 'Operations'),
(7, 'Support');


-- TABLE 2: EMPLOYEES

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    age INT,
    salary INT,
    dept_id INT,
    joining_date DATE
);

INSERT INTO employees VALUES
(101, 'Rahul', 25, 35000, 1, '2023-01-15'),
(102, 'Priya', 28, 45000, 2, '2022-05-20'),
(103, 'Arjun', 30, 55000, 1, '2021-03-10'),
(104, 'Sneha', 24, 30000, 3, '2024-07-01'),
(105, 'Kiran', 32, 60000, 4, '2020-11-25'),
(106, 'Ayesha', 27, 40000, 2, '2023-09-12'),
(107, 'Vikram', 29, 50000, 5, '2022-06-18'),
(108, 'Neha', 26, 38000, 3, '2024-02-05'),
(109, 'Amit', 31, 65000, 1, '2020-08-14'),
(110, 'Pooja', 23, 28000, 6, '2025-01-10');

-- TABLE 3: PROJECTS

CREATE TABLE projects (
    project_id INT,
    project_name VARCHAR(50),
    emp_id INT,
    budget INT,
    start_date DATE
);

INSERT INTO projects VALUES
(201, 'AI Project', 101, 50000, '2025-01-10'),
(202, 'HR Portal', 102, 30000, '2025-02-15'),
(203, 'Data Analytics', 103, 80000, '2025-03-20'),
(204, 'Finance System', 104, 45000, '2025-04-05'),
(205, 'Marketing App', 105, 60000, '2025-05-12'),
(206, 'ML Project', 101, 90000, '2025-06-18'),
(207, 'Cloud Migration', 107, 75000, '2025-07-22'),
(208, 'Support Portal', 108, 25000, '2025-08-10'),
(209, 'Sales Dashboard', 103, 55000, '2025-09-15'),
(210, 'Automation System', 109, 100000, '2025-10-20');



#
select employees.name,
employees.age,employees.salary
from employees;

select * from employees
where salary > 40000 ;


select* from employees
where age between 25 and 30 ;

select* from employees
where name like 'A%' ;

select*from employee.emp_id
employees.emp_name from 
employees order by salary decs;

select * from employees.emp_id
employees.emp_name from
employees order by date aecs;

select department, count(*) AS
employees
group by department;

select department
from employees
group by department;

select 
MAX(salary) as highest_salary,
MIN(salary) as lowest_salary
from  employees;

select AVG(salary) as average_salary
from employees;


select department.dept_id,employees.emp_name, count(*) as employees_count
from employees
group by  employees.dept_id,employees.emp_name;

SELECT department.department_id, AVG(salary) AS total_salary
FROM employees
GROUP BY department_id having avg(salary) > 40000;


select * from  projects
where budget > 50000;


select sum(budget) as total_budget
from projects;

select avg(budget) as avg_budget
from projects;

select employees.emp_name,
count(projects.project_id)as total_projects
from employees
left join projects on employees.emp_id=projects.emp_id
group by employees.emp_9d,employees/emp_name;









































