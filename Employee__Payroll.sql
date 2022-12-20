CREATE DATABASE Payroll_Service;
USE Payroll_Service;
CREATE TABLE Employee_Payroll(id int primary key identity(1,1),name varchar (150), salary bigint NOT NULL, start Date NOT NULL);

INSERT INTO Employee_Payroll(name,salary,start) VALUES
('Sid', 100000.00, '2018-01-03'),
('Lalit', 200000.00, '2019-11-13'),
('Shubhi', 300000.00, '2021-02-03');

SELECT * FROM Employee_Payroll;

SELECT salary FROM Employee_Payroll WHERE name = 'Sid';
SELECT * FROM Employee_Payroll WHERE start BETWEEN CAST('2018-01-03' AS DATE) AND GETDATE();

ALTER TABLE Employee_Payroll ADD gender CHAR(1);
update Employee_Payroll set gender = 'M' WHERE name = 'Sid';
update Employee_Payroll set gender = 'M' WHERE name = 'Lalit';
update Employee_Payroll set gender = 'F' WHERE name = 'Shubhi';


SELECT AVG(salary) FROM Employee_Payroll WHERE gender = 'M' GROUP BY gender;


drop table Employee_Payroll