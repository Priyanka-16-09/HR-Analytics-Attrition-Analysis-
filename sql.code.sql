create database hr_project;
use hr_project;

show tables;


SELECT * FROM hr_data
WHERE Age IS NULL OR Department IS NULL;

select * from hr_data
limit 10;
SELECT * FROM hr_data
WHERE Attrition IS NULL;

select count(*) from hr_data;

select count(*) from hr_data
where Attrition='Yes';
SELECT 
(COUNT(CASE WHEN Attrition='yes' THEN 1 END)*100.0/COUNT(*)) 
AS attrition_rate
FROM hr_data;

SELECT Department, COUNT(*) FROM hr_data
WHERE Attrition='yes'
GROUP BY Department;

SELECT 
CASE 
WHEN MonthlyIncome < 3000 THEN 'Low'
WHEN MonthlyIncome BETWEEN 3000 AND 7000 THEN 'Medium'
ELSE 'High'
END AS salary_group,
COUNT(*) 
FROM hr_data
WHERE Attrition='yes'
GROUP BY salary_group;

SELECT YearsAtCompany, COUNT(*) FROM hr_data
WHERE Attrition='yes'
GROUP BY YearsAtCompany;

SELECT JobRole, COUNT(*) AS attrition_count FROM hr_data
WHERE Attrition = 'Yes'
GROUP BY JobRole;





