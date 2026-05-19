Use assignments;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(100)
);
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(101, 'Human Resources'),
(102, 'Finance'),
(103, 'IT');
select * from employees;
select * from departments;
-- 1) Write a SQL query to list the names of employees along with the names of the departments they work in.
select firstname, lastname, departmentname, employeeID from employees as e inner join departments as d on d.departmentID= e.DepartmentID;

-- 2) Write a SQL query to list all the departments and the employees working in them, including departments with no employees.
select firstname, lastname, departmentname, employeeID from employees as e right join departments as d on d.departmentID= e.DepartmentID;

-- 4) Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.
select firstname, lastname from employees as e join departments as d on e.departmentID= d.departmentID where e.firstname= 'jane' and e.lastname= 'doe' and e.departmentid <> d.departmentid;

-- 5) Write a SQL query to find the department with the highest total salary paid to its employees.
select * from employees as e left join departments as d on e.departmentid= d. departmentid where salary= (select max(salary) from employees);