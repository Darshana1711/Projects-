use  assignments;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName NVARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);

select * from employees;

-- 1) Write a SQL query to find the names of employees who have a salary higher than the average salary of all employees.
select firstname, salary from employees where salary > (select avg(salary) from employees);

-- 2) Write a SQL query to list the employee names and their departments for employees who were hired after the oldest employee in the company.
select firstname, departmentID from employees where hiredate > (select min(hiredate) from employees);

-- 3) Write a SQL query to find the details of the employee(s) with the highest salary.
select firstname, salary from employees where salary = (select max(salary) from employees);
select max(salary) from employees;

-- 4) Write a SQL query to find the names of employees who work in the same department as 'John Smith'.
select firstname, lastname from employees where departmentid = (select departmentid from employees where firstname= 'john' and lastname= 'smith');


-- 5) Write a SQL query to find the names of employees who do not belong to the department with the highest average salary.
select * from employees;
select max(salary) from employees;
select firstname, lastname, salary from employees where salary != (select max(salary) from employees);