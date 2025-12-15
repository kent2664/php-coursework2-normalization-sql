-- question 1
select sum(salary) as total, avg(salary) from employee;

-- question 2
SELECT count(*) FROM `employee` WHERE deptcode = '3V';

-- question 3
SELECT * FROM `employee` where name like 'R%' and CHAR_LENGTH(name) > 4;

--question 4
SELECT * FROM `employee` WHERE job = 'Teacher';

-- question 5
SELECT * FROM `employee` WHERE hiredate BETWEEN '2018-10-01' AND '2019-04-01';

-- question 6
SELECT MAX(salary),MIN(salary) FROM `employee`;

-- question 7
SELECT MAX(hiredate),MIN(hiredate) FROM `employee`;

--question 8
SELECT department.deptlocation, count(department.deptlocation) FROM `employee`  JOIN `department` on employee.deptcode = department.deptcode GROUP BY department.deptlocation;

--question 9
SELECT department.deptlocation, avg(employee.salary) FROM `employee` JOIN `department` on employee.deptcode = department.deptcode GROUP BY department.deptcode;

--question 10
SELECT department.deptlocation, sum(employee.salary) as total_salary FROM `employee` JOIN `department` on employee.deptcode = department.deptcode group by department.deptcode having sum(employee.salary) > 800000;

--question 11
SELECT department.deptlocation, employee.name FROM `employee` JOIN `department` on employee.deptcode = department.deptcode where deptlocation = '900 WASHINGTON RD ATTN MCUD-RMD-UBO';

--question 12
SELECT department.deptlocation, employee.job, sum(employee.salary) FROM `employee` JOIN `department` on employee.deptcode = department.deptcode GROUP BY department.deptcode, employee.job;