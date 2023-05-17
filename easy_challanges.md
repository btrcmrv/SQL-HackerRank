
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


**[The Report](https://www.hackerrank.com/challenges/the-report)**


You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.

|  Column | Type |
|---|---|
| ID  | INTEGER |
| Name | STRING   |
| Marks  | INTEGER  |


Grades contains the following data:

|Grade | Min_Mark | Max_Mark |
|---|---|----|
| 1  | 0 | 9 | 
| 2 | 10  | 19 |
| 3  | 20  |  29 |
| 4  | 30 |  39 |
| 5 |  40 | 49 |
| 6 | 50 | 59 |
| 7 | 60 | 69 |
| 8 | 70 | 79 |
| 9 | 80 | 89 |
| 10 | 90 | 100|


Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

Write a query to help Eve.

Sample Input

| ID  | Name | Marks|
|---|---|----|
| 1 | Julia   | 88|
| 2  | Samantha  | 68|
| 3 | Maria   | 99|
| 4 | Scarlet   | 78|
| 5 | Ashley   | 63|
| 6 | Jane   | 81|

Sample Output

```
Maria 10 99
Jane 9 81
Julia 9 88 
Scarlet 8 78
NULL 7 63
NULL 7 68

```

Note

Print "NULL"  as the name if the grade is less than 8.

*Explanation*

Consider the following table with the grades assigned to the students:

| ID  | Name | Marks| Grade|
|---|---|----|----|
| 1 | Julia| 88| 9 |
| 2 | Samantha | 68 | 7 |
| 3 | Maria   | 99| 10 |
| 4 | Scarlet   | 78 | 8 | 
| 5 | Ashley   | 63 | 7 |
| 6 | Jane   | 81 | 9 |


So, the following students got 8, 9 or 10 grades:

Maria (grade 10)

Jane (grade 9)

Julia (grade 9)

Scarlet (grade 8)






**Solution**

```sql 

```


























