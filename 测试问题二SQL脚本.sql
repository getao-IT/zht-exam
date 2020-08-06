-- 问题：
-- 1.建表
-- 员工表
CREATE TABLE `staff` (
  `staff_id` varchar(10) NOT NULL,
  `dept_id` varchar(10) NOT NULL,
  `staff_name` varchar(10) NOT NULL,
  `staff_age` int(3) DEFAULT NULL,
  `staff_phone` int(11) DEFAULT NULL,
  `staff_dept_name` varchar(20) NOT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `dept_id` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`dept_id`)
)

-- 部门表
CREATE TABLE `dept` (
  `dept_id` varchar(10) NOT NULL,
  `dept_name` varchar(20) NOT NULL,
  `dept_dsc` varchar(200) NOT NULL,
  PRIMARY KEY (`dept_id`)
)

-- 2.手机号脱敏
SELECT CONCAT(
     LEFT(staff_phone, 3),  #账户前三位
     '****',
     RIGHT(staff_phone, 4)  #账户后四位
   )  AS 手机号脱敏
FROM staff

-- 3.统计各部门人数
SELECT 
	dpt.dept_name AS '部门',
	COUNT(*) AS '人数'
FROM
	dept AS dpt,
	staff AS stf
WHERE
	dpt.dept_id = stf.dept_id
GROUP BY
	dpt.dept_id

-- 4.
SELECT 
	dpt.dept_name AS '部门',
	staff_name AS '姓名',
	MAX(staff_age) AS '年龄'
FROM
	dept AS dpt INNER JOIN
	staff AS stf ON
	dpt.dept_id = stf.dept_id
GROUP BY
	dpt.dept_id

-- 5.
SELECT stf.staff_phone
FROM staff AS stf
WHERE stf.staff_phone like '183%'

