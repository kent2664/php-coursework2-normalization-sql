CREATE TABLE `employee` (
  `empno` varchar(20) NOT NULL,
  `deptcode` varchar(5) DEFAULT NULL,
  `name` varchar(200)  DEFAULT NULL,
  `job` varchar(200)  DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `salary` decimal(8,2) DEFAULT NULL
);
commit;

CREATE TABLE `department` (
  `deptcode` varchar(5) NOT NULL,
  `deptlocation` varchar(100) DEFAULT NULL
);
commit;