use assignments;
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);
select * from employees;
use assignments;
-- 1) Write a SQL query to find the names of employees whose first names start with the letter 'J'.
select * from employees where firstname like 'J%';

-- 2) Write a SQL query to find the names of employees whose last names end with the letter 'n'.
select * from employees where lastname like '%n';

-- 3) Write a SQL query to find the email addresses of employees that contain the word "john".
select * from employees where email like '%john%';

-- 4) Write a SQL query to find the names of employees whose first names have exactly 5 characters.
select * from employees where length(Firstname) =5;

-- 5) Write a SQL query to find the names of employees whose last names contain the letter 'a' as the second character.
select * from employees where lastname like '_a%';


