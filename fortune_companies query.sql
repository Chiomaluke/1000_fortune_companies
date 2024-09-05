
Select Count (Distinct Sector)
From fortune_companies

Select Count (Distinct Company)
From fortune_companies

Select Count (Distinct HeadquartersState)
From fortune_companies

Select Count (Distinct Industry)
From fortune_companies

Select Count (Distinct Company)
From fortune_companies
where FemaleCEO = 'yes'

Select Count (Distinct Company)
From fortune_companies
where FemaleCEO = 'no'

Select Count (Distinct Company)
From fortune_companies
where Founder_is_CEO = 'no'

SELECT Top 10 Sector, SUM(Revenue) AS Sector_revenue
FROM fortune_companies
GROUP BY Sector
ORDER BY Sector_revenue DESC;

SELECT Top 10 Industry, SUM(Revenue) AS Industry_revenue
FROM fortune_companies
GROUP BY Industry
ORDER BY Industry_revenue DESC;


Select Top 10 Company, Revenue, Number_of_employees
From fortune_companies
Order by Number_of_employees DESC;

select sum(Revenue)
from fortune_companies
where FemaleCEO='yes'

select sum(Revenue)
from fortune_companies
where FemaleCEO='no'

SELECT Top 10 Company, Sector, Industry, Profits_M, Revenue, MarketCap_March28_M
FROM fortune_companies
WHERE Profitable = 'yes'
ORDER BY Profits_M DESC;

SELECT Top 10 Company, Sector, Industry, Revenue, RevenuePercentChange
FROM fortune_companies
ORDER BY CAST(REPLACE(RevenuePercentChange, '%', '') AS FLOAT) DESC

SELECT Top 10 Company, Sector, Industry, Assets_M, Profits_M
FROM fortune_companies
WHERE Assets_M > 100000 AND Profits_M > 0
ORDER BY Assets_M DESC;

SELECT Top 10  Sector, Industry, Number_of_employees, Growth_in_Jobs
FROM fortune_companies
WHERE Growth_in_Jobs = 'yes'
ORDER BY Number_of_employees DESC;

SELECT Top 10 Company, Sector, Industry, Number_of_employees
FROM fortune_companies
ORDER BY Number_of_employees DESC;

SELECT Top 10 Sector, SUM(Number_of_employees) AS Total_Employees
FROM fortune_companies
GROUP BY Sector
ORDER BY Total_Employees DESC;

SELECT 
    Founder_is_CEO, 
    SUM(CAST(REPLACE(REVENUE, '$', '') AS FLOAT)) AS Total_Revenue
FROM 
    fortune_companies
GROUP BY 
    Founder_is_CEO;

SELECT 
    FemaleCEO, 
    SUM(CAST(REPLACE(REVENUE, '$', '') AS FLOAT)) AS Total_Revenue
FROM 
    fortune_companies
GROUP BY 
    FemaleCEO;

SELECT Top 10 HeadquartersState, SUM(Revenue) AS State_revenue, SUM(Number_of_employees) AS State_employees
FROM fortune_companies
GROUP BY HeadquartersState
ORDER BY State_revenue DESC;

SELECT Top 10 HeadquartersState, SUM(Number_of_employees) AS State_employees
FROM fortune_companies
GROUP BY HeadquartersState
ORDER BY State_employees DESC;

SELECT CompanyType, SUM(Revenue) AS Company_revenue
FROM fortune_companies
GROUP BY CompanyType
ORDER BY Company_revenue DESC;


Select * from fortune_companies

