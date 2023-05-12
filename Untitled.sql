-- 1. Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
-- SOLUTION
SELECT *
FROM CITY
WHERE COUNTRYCODE like "USA" AND POPULATION >100000;

-- 2. Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
-- SOLUTION
SELECT NAME
FROM CITY
WHERE COUNTRYCODE like "USA" AND POPULATION >120000;


-- 3. Query all columns (attributes) for every row in the CITY table.
-- SOLUTION
SELECT * 
FROM CITY;

-- 4. Query all columns for a city in CITY with the ID 1661.
-- SOLUTION
SELECT *
FROM CITY 
WHERE ID=1661;


-- 5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
-- SOLUTION
SELECT *
FROM CITY 
WHERE COUNTRYCODE like "JPN";

-- 6.Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
-- SOLUTION
SELECT NAME
FROM CITY 
WHERE COUNTRYCODE like "JPN";
