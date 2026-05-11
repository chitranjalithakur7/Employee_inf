-- use emp_inf
-- (A) OVERVIEW DASHBOARD  

-- 1 Total Employee 
select count(*) AS Total_Employee
 from emp_data ;
-- 2 Avg Salary
select Avg(Salary) as Avg_Salary 
from emp_data; 
-- 3 Avg Experience 
select avg(Experience_Years) AS Avg_experirnce 
from emp_data ;
-- 4 Gender Distribution 
select Gender, count(*) as count
from emp_data
group by Gender;
-- 5  Employees By Department
select Department,count(*) as Total_emp
from emp_data
group by  Department;

-- (B) SALARY ANALYSIS
-- 1 Avg salary by department
select Department,AVG(Salary) as Avg_Salary
from emp_data
group by Department;

-- 2 highhest salary by department
select Department,max(Salary) as Highest_Salary
from emp_data
group by Department;

-- 3 Top 10 highest salary
select Emp_fullname,Department,Salary
from emp_data
order by Salary desc
limit 5;

-- 4  Salary Distribution
select
    case 
        when Salary < 30000 then 'Low'
        when Salary between 300000 AND 600000 then 'Medium'
        else 'High'
     end as Salary_Range,
     count(*) As emp_data
	from emp_data
group by Salary_Range;

-- (C) PERFORMANCE ANALYSIS

--  1 AVG PERFORMANCE
select AVG(Performance_Score) AS Avg_Performance
from emp_data;

-- 2 Top perforance
select Emp_fullname,Department,Performance_Score
from emp_data
order by Performance_Score desc
limit 5;

-- 3 performance by  department
select Department,AVG(Performance_Score)
from emp_data
group by Department;

--  --  4 performance distribution
-- SELECT Performance_Score, COUNT(*) AS Count
-- FROM emp_data
-- GROUP BY Performance_Score;

-- (D) LOCATION ANALYSIS
-- 1 city wise
select City, count(*) as Total
from emp_data
group by City;

-- (E) Experience & Hiring Trends
-- 1 experience by salary
select Experience_Years,avg(Salary) as Avg_salary
from emp_data
group by Experience_Years
order by Experience_Years;

-- 2 emp by experience year
select Experience_Years, count(*) AS Total_Emp
from emp_data
group by Experience_Years;

-- 3 hiring Trend
select year(Joining_Date) as Year,count(*) as Total_Emp
from emp_data
group by year(Joining_Date)
order by year;





