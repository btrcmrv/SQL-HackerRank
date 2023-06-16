
                                             CHALLENGES
                                                                          
**[Higher Than 75 marks](https://www.hackerrank.com/challenges/more-than-75-marks/problem)**

Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

Input Format

The STUDENTS table is described as follows:

|  Column | Type |
|---|---|
| ID  | INTEGER |
| Name | STRING   |
| Marks  | INTEGER  |


The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

Sample Input

|  ID | Name | Marks |
|---|---|----|
| 1  | Ashley | 81 | 
| 2 | Samantha  | 75 |
| 4  | Julia  |  76 |
| 3  | Belvet |  84 |

Sample Output

```
Ashley

Julia

Belvet
```

*Explanation*

Only Ashley, Julia, and Belvet have Marks > 75. If you look at the last three characters of each of their names, there are no duplicates and 'ley' < 'lia' < 'vet'.

**Solution**
```sql

SELECT Name 
FROM STUDENTS 
WHERE Marks>75
ORDER BY RIGHT(Name,3),
         ID ASC;
```


**[Employee Names](https://www.hackerrank.com/challenges/name-of-employees/problem)**

Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

Input Format

The Employee table containing employee data for a company is described as follows:

|  Column | Type |
|---|---|
| employee_id  | Integer |
| name | String |
| months | Integer  |
| salary | Integer |

where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is their monthly salary.

Sample Input

|  employee_id | name | months | salary  |
|---|---|----|-----|
| 12228 | Rose | 15 | 1968 |
| 33645 | Angela   | 1 | 3443 |
| 45692  | Frank  | 17  | 1608  |
| 56118  | Patrick  |  7 | 1345 |
| 59725 | Lisa | 11 | 2330 |
| 74197 | Kimberly   | 16 | 4372 |
| 78454  | Bonnie  |  8 | 1771 |
| 83565 | Michael |  6 | 2017 |
| 98607  | Todd  |  5 | 3396 |
| 99989 | Joe |  9 | 3573 |

Sample Output

```
Angela

Bonnie

Frank

Joe

Kimberly

Lisa

Michael

Patrick

Rose

Todd 
```


**Solution**
```sql
SELECT name 
FROM Employee 
ORDER BY name ASC; 
```



**[Employee Salaries](https://www.hackerrank.com/challenges/salary-of-employees/problem)**

Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.

Input Format

The Employee table containing employee data for a company is described as follows:

|  Column | Type |
|---|---|
| employee_id  | Integer |
| name | String   |
| months | Integer  |
| salary | Integer |

where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is the their monthly salary.

Sample Input

|  employee_id | name | months | salary  |
|---|---|----|-----|
| 12228 | Rose | 15 | 1968 |
| 33645 | Angela   | 1 | 3443 |
| 45692  | Frank  | 17  | 1608  |
| 56118  | Patrick  |  7 | 1345
| 59725 | Lisa | 11 | 2330 |
| 74197 | Kimberly   | 16 | 4372 |
| 78454  | Bonnie  |  8 | 1771 |
| 83565 | Michael |  6 | 2017
| 98607  | Todd  |  5 | 3396 |
| 99989 | Joe |  9 | 3573 |

Sample Output
```
Angela

Michael

Todd

Joe
```

*Explanation*

Angela has been an employee for 1 month and earns $3443 per month.
Michael has been an employee for 6 months and earns $2017 per month.
Todd has been an employee for 5 months and earns $3396 per month.
Joe has been an employee for 9 months and earns $3573 per month.
We order our output by ascending employee_id.

**Solution**
```sql

SELECT name
FROM Employee
WHERE salary>2000 AND
      months<10
ORDER BY employee_id ASC;
```


**[Revising Aggregations - The Count Function](https://www.hackerrank.com/challenges/revising-aggregations-the-count-function)**

Query a count of the number of cities in CITY having a Population larger than 100,000.

Input Format

The CITY table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| NAME | VARCHAR2(17)   |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT | VARCHAR2(20) |
| POPULATION | NUMBER |


**Solution**
```sql

SELECT COUNT(ID) AS number_of_cities_pop_10k
FROM CITY
WHERE POPULATION>100000;

```



**[Revising Aggregations - The SUM Function](https://www.hackerrank.com/challenges/revising-aggregations-sum)**


Query the total population of all cities in CITY where the District is California.

Input Format

The CITY table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| NAME | VARCHAR2(17)   |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT | VARCHAR2(20) |
| POPULATION | NUMBER |


**Solution**

```sql

SELECT SUM(POPULATION)AS california_total_population
FROM CITY
WHERE DISTRICT="California";

```




**[Revising Aggregations - Averages](https://www.hackerrank.com/challenges/revising-aggregations-the-average-function)**

Query the AVERAGE population of all cities in CITY where the District is California.

Input Format

The CITY table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| NAME | VARCHAR2(17)   |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT | VARCHAR2(20) |
| POPULATION | NUMBER |


**Solution**

```sql

SELECT AVG(POPULATION)AS california_average_population
FROM CITY
WHERE DISTRICT="California";

```


**[Aggregations - Average Population](https://www.hackerrank.com/challenges/average-population)**

Query the AVERAGE population for all cities in CITY, ROUNDED DOWN to the nearest integer.


Input Format

The CITY table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| NAME | VARCHAR2(17)   |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT | VARCHAR2(20) |
| POPULATION | NUMBER |


**Solution**

```sql

SELECT FLOOR(AVG(POPULATION))AS california_average_population_round_down
FROM CITY;

```



**[African Cities](https://www.hackerrank.com/challenges/african-cities)**


Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| NAME | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT | VARCHAR2(20) |
|POPULATION | NUMBER|


|  Field | Type |
|---|---|
| CODE  | VARCHAR2(3) |
| NAME | VARCHAR2(44) |
| CONTINENT | VARCHAR2(13)  |
| REGION | VARCHAR2(25) |
|SURFACEAREA | NUMBER |
|INDEPYEAR| VARCHAR2(5) | 
|POPULATION | NUMBER |
|LIFEEXPECTANCY| VARCHAR2(4)|
|GNP| NUMBER |
|GNPOLD| VARCHAR2(9) |
|LOCALNAME | VARCHAR2(44) |
|GOVERNMENTFORM | VARCHAR2(44) |
|HEADOFSTATE | VARCHAR2(32)|
|CAPITAL | VARCHAR2(4)|
|CODE2 | VARCHAR2(2)|



**Solution**

```sql
SELECT ci.NAME
FROM CITY ci
JOIN COUNTRY co   
    ON ci.COUNTRYCODE= co.CODE
WHERE co.CONTINENT = "Africa"

```


**[Avarage Population of Each Continent](https://www.hackerrank.com/challenges/average-population-of-each-continent)**

Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| NAME | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT | VARCHAR2(20) |
|POPULATION | NUMBER|


|  Field | Type |
|---|---|
| CODE  | VARCHAR2(3) |
| NAME | VARCHAR2(44) |
| CONTINENT | VARCHAR2(13)  |
| REGION | VARCHAR2(25) |
|SURFACEAREA | NUMBER |
|INDEPYEAR| VARCHAR2(5) | 
|POPULATION | NUMBER |
|LIFEEXPECTANCY| VARCHAR2(4)|
|GNP| NUMBER |
|GNPOLD| VARCHAR2(9) |
|LOCALNAME | VARCHAR2(44) |
|GOVERNMENTFORM | VARCHAR2(44) |
|HEADOFSTATE | VARCHAR2(32)|
|CAPITAL | VARCHAR2(4)|
|CODE2 | VARCHAR2(2)|



**Solution**

```sql
SELECT co.CONTINENT, FLOOR(AVG(ci.POPULATION)) AS avarage_roundown_population
FROM CITY ci
JOIN COUNTRY co   
    ON ci.COUNTRYCODE= co.CODE
GROUP BY  co.CONTINENT;
```
