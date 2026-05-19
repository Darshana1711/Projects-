Create database assignments;
use assignments;
create table employeesales (
SalesID int primary key,
EmployeeID int,
Department varchar(50),
salesamount decimal (10, 2),
SalesDate date);

insert into employeesales (SalesId, EmployeeID, Department, salesamount, salesdate)
values
(1, 101, 'Electronics', 500.00, '2023-08-01'),
(2, 102, 'Electronics', 300.00, '2023-08-03'),
(3, 101, 'Furniture', 150.00, '2023-08-02'),
(4, 103, 'Electronics', 250.00, '2023-08-04'),
(5, 104, 'Furniture', 200.00, '2023-08-05'),
(6, 101, 'Furniture', 450.00, '2023-08-05'),
(7, 102, 'Electronics', 700.00, '2023-08-05'),
(8, 103, 'Furniture', 100.00, '2023-08-06');

-- 1) Write a query to calculate the total sales amount for each department in the EmployeeSales
select * from employeesales;
select department, sum(salesamount) from employeesales group by department;

-- 2) Write a query to count the number of sales made by each employee.
select * from employeesales;
select employeeID, count(department) from employeesales group by employeeID;

-- 3) Write a query to calculate the average sale amount for each department.
select department, avg(salesamount) from employeesales group by department;

-- 4) Write a query to find the total sales amount for each employee, but only include employees who have made more than one sale.
select * from employeesales;
select employeeID, sum(salesamount) from employeesales group by employeeid having count(*)>1;

-- 5) Write a query to find the total sales for each month in 2023.
select * from employeesales;
select salesdate, sum(salesamount) from employeesales group by salesdate;


