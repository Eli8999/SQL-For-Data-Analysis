-- Active: 1720119298920@@127.0.0.1@3306

--Create database 
CREATE DATABASE Coffee_DB
    DEFAULT CHARACTER SET = 'utf8mb4';

-- use data_financial DB
use Coffee_DB;

--creat coffee_habits Table
CREATE TABLE coffee_habits (
    Country VARCHAR(100),
    CoffeeConsumptionPerCapita DECIMAL(10, 2),
    Year INT,
    AveragePricePerCup DECIMAL(10, 2),
    TotalSpendingOnCoffee VARCHAR(100),
    Population DECIMAL(15, 2)
);

--Load csv file into financial_data 
LOAD DATA INFILE 'E:/worldwide_coffee_habits/worldwide_coffee_habits.csv'
INTO TABLE coffee_habits
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
