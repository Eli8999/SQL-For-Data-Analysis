-- use coffee database 
using coffee_db;

-- select all rows 
select * FROM coffee_habits; 

--1. Which country has the highest coffee consumption per capita?
SELECT Country, MAX(CoffeeConsumptionPerCapita) AS MaxConsumption
FROM coffee_habits
GROUP BY Country;

--2. Which year had the highest average price per cup of coffee?
SELECT Year, AVG(AveragePricePerCup) AS AvgPrice
FROM coffee_habits
GROUP BY Year
ORDER BY AvgPrice DESC
LIMIT 1;

-- 3.What is the total coffee consumption per capita for each country over the years?
SELECT Country, SUM(CoffeeConsumptionPerCapita) AS TotalConsumption
FROM coffee_habits
GROUP BY Country;

-- 4.What is the average total spending on coffee per year?
SELECT Year, AVG(TotalSpendingOnCoffee) AS AvgSpending
FROM coffee_habits
GROUP BY Year;

-- 5.What is the trend of coffee consumption per capita over the years?
SELECT Year, AVG(CoffeeConsumptionPerCapita) AS AvgConsumption
FROM coffee_habits
GROUP BY Year
ORDER BY Year;

-- 6.Identify the top 5 countries with the highest average price per cup of coffee.
SELECT Country, AVG(AveragePricePerCup) AS AvgPrice
FROM coffee_habits
GROUP BY Country
ORDER BY AvgPrice DESC
LIMIT 5;

-- 7.Calculate the year-over-year percentage change in total spending on coffee for each country.
SELECT Country, AVG(AveragePricePerCup) AS AvgPrice
FROM coffee_habits
GROUP BY Country
ORDER BY AvgPrice DESC
LIMIT 5;

-- 8.Which country has shown the most significant increase in coffee consumption per capita over the years?
SELECT Country,
       (MAX(CoffeeConsumptionPerCapita) - MIN(CoffeeConsumptionPerCapita)) AS Increase
FROM coffee_habits
GROUP BY Country
ORDER BY Increase DESC
LIMIT 1;

-- 9.What is the correlation between coffee consumption per capita and total spending on coffee?
SELECT
    (AVG(CoffeeConsumptionPerCapita * TotalSpendingOnCoffee) - AVG(CoffeeConsumptionPerCapita) * AVG(TotalSpendingOnCoffee)) /
    (STDDEV(CoffeeConsumptionPerCapita) * STDDEV(TotalSpendingOnCoffee)) AS Correlation
FROM
    coffee_habits;




