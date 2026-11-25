create Database if not Exists Employee_Database;
use Employee_Database;
create table if not exists Departments(
Department_ID int Primary Key,
Department_Name Varchar(100)
);
Create table if not exists Location(
Location_ID int Primary key,
Location Varchar(100)
);
Create table if not exists Employees(
Employee_ID int Primary key,
Employee_Name varchar(100),
Gender Enum("M","F"),
Age Int,
Hire_Date date,
Designation Varchar(100),
Salary decimal(10,2),
Department_ID int,
Location_ID int,
foreign key(Department_ID) references departments(department_id),
foreign key(Location_ID) references Location(Location_ID)
);
alter table employees add column Email varchar(100);
alter table employees modify designation varchar(200);
alter table employees drop column age;
alter table employees rename column Hire_Date to Date_Of_Joining;
Rename table Departments to Departments_info;
Rename table Location to Locations;
Truncate table Employees;
Drop table Employees;
Drop database Employee_Database;

Create Database if not exists Employee_DB;
use Employee_DB;
Create table if not Exists Department(
Department_ID int Unique,
Department_Name Varchar(100) not null unique,
primary key (Department_ID)
);
Create table if not exists Location(
Location_ID Int auto_increment Unique,
Location_Name Varchar(100) not null unique,
Primary key (Location_ID)
);
Create table if not Exists Employee(
Employee_ID int Unique,
Employee_Name Varchar(100) Not NUll,
Gender Enum("M","F"),
age int check(Age>=18),
Hire_date Date default (current_timestamp),
Designation Varchar(100),
Salary Decimal(10,2),
Department_Id Int,
Location_Id Int,
Foreign key (Department_ID) references Department(Department_ID),
Foreign key (Location_ID) references Location(Location_ID)
);
USE employee_db;

INSERT INTO department (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

INSERT INTO location (location_Name) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

INSERT INTO employee (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

Select distinct(Salary) from employee;

Select Age as Employee_Age, salary as Employee_Salary 
from employee;

Select * from employee
where salary > 50000 and Hire_date < '2016-01-01';

select * from employee
where Designation is null;

SET SQL_SAFE_UPDATES = 0;
Update employee
set designation = 'Data Scientist'
where designation is null;
Select * from Employee;

select * from employee
order by Department_Id asc, Salary desc;

select * from employee
where year(Hire_date) = '2018' 
order by Hire_date asc
limit 5;

select sum(salary) as Total_Finance_salary
from employee
where Department_Id = 
	( select Department_Id 
	from department 
	where Department_Name = 'Finance'
	);

select min(Age) As Minimum_Employee_Age
from employee;

select Case location_id
	When 1 then "Chennai"
    When 2 then "Banglore"
    when 3 then "Hyderabad"
    when 4 then "Pune"
end as Location_Name,
max(Salary) as Maximum_Salary
from employee
group by Location_Id;

select Designation, round(Avg(Salary),2) As Avg_Salary from employee
where Designation like '%Analyst%'
group by Designation;

Select Department_ID, count(*) as Employee_Count
from employee
group by Department_Id
Having Count(*) < 3;

Select Case location_id
	When 1 then "Chennai"
    When 2 then "Banglore"
    when 3 then "Hyderabad"
    when 4 then "Pune"
end as Location_Name, Round(avg(Age),0) As Avg_Age from employee
where gender = 'F'
group by Location_Id
Having avg(Age) < 30;

select Employee.Employee_id, Employee.Employee_Name, Department.Department_Name 
From employee
Inner join department
on Employee.Department_Id = Department.Department_ID;

select department.Department_ID, department.Department_Name, 
count(employee.Employee_ID) As Total_Employees
from department
Left Join employee
on department.Department_ID = employee.Department_Id
group by department.Department_ID, department.Department_Name;

select location.Location_ID, location.Location_Name, employee.Employee_Name
from employee
Right Join Location
On employee.Location_Id = location.Location_ID;

Select department.Department_Name,location.Location_Name
from department
Cross Join location;

select E1.Employee_Name as EMP1, E2.Employee_Name As EMP2, E1.Department_Id
From employee E1
Inner Join Employee E2
on E1.Department_ID = E2.Department_ID
where E1.Employee_Id < E2.Employee_ID;

Select Employee_ID, Employee_Name, Salary, 
Rank() Over(Order by Salary desc) As Salary_Rank
from employee;

select Employee_ID, Employee_Name, Salary,
dense_rank() Over( partition by department_id order by Salary Desc) as Salary_rank
From Employee;

select Department_id,
sum(Salary) Over( partition by Department_Id order by Employee_id) As Running_Total_Salary
From Employee;