
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


**[Aggregation - Average Population](https://www.hackerrank.com/challenges/average-population)**

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


**[Aggregation - Japan Population](https://www.hackerrank.com/challenges/japan-population)**

Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.


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

SELECT SUM(POPULATION) AS JPN_total_population
FROM CITY
WHERE COUNTRYCODE="JPN";

```





**[Aggregation - Population Density Difference](https://www.hackerrank.com/challenges/population-density-difference)**

Query the difference between the maximum and minimum populations in CITY.

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

SELECT (MAX(POPULATION)- MIN(POPULATION))AS range_population
FROM CITY;

```





**[Aggregation - The Blunder](https://www.hackerrank.com/challenges/the-blunder)**

Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table but did not realize her keyboard's 0 key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.: actual- miscalculated average monthly salaries), and round it up to the next integer.

Input Format

The EMPLOYEES table is described as follows:

|  Column | Type |
|---|---|
| ID  | Integer |
| Name | String   |
| Salary | Integer  |

Note: Salary is per month.

Constraints
100<Salary<10^5

Sample Input


|  ID | Name | Salary|
|---|---|---|
|1  | Kristeen | 1420|
|2 | Ashley   | 2006|
|3 | Julia  | 2210|
|4| Maria  | 3000|

Sample Output
```
2061
```

Explanation

The table below shows the salaries without zeros as they were entered by Samantha:

|  ID | Name | Salary|
|---|---|---|
|1  | Kristeen | 142|
|2 | Ashley   | 26|
|3 | Julia  | 221|
|4| Maria  | 3|

Samantha computes an average salary of 98.00. The actual average salary is 2159.00.

The resulting error between the two calculations is 2159.00- 98.00=2061.00. Since it is equal to the integer 2061, it does not get rounded up.


**Solution**

```sql

SELECT CEIL((AVG(Salary)) - (AVG(REPLACE(Salary, "0","")))) AS round_up_error
FROM EMPLOYEES;

```


**[Aggregation - Top Earners](https://www.hackerrank.com/challenges/earnings-of-employees)**


We define an employee's total earnings to be their monthly salaryx months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as 2 space-separated integers.

Input Format

The Employee table containing employee data for a company is described as follows:

|  Column | Type |
|---|---|
| employee_id  | Integer |
| name | String   |
|months |Integer|
| salary | Integer  |

where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is the their monthly salary.

Sample Input

|  employee_id | name | months|salary|
|---|---|---|---|
|12228  | Rose | 15| 1968|
|33645| Angela | 1| 3443|
|45692 | Frank  |17| 1608|
|56118| Patrick  |7| 1345|
|59725  |Lisa | 11| 2330|
|74197  | Kimberly | 16| 4372|
|78454  | Bonnie | 8| 1771|
|83565  | Michael | 6| 2017|
|98607  | Todd | 5| 3396|
|99989  | Joe | 9| 3573|


Sample Output
```
69952 1
```
Explanation

The table and earnings data is depicted in the following diagram: 

|  employee_id | name | months|salary|earnings
|---|---|---|---|--|
|12228  | Rose | 15| 1968| 29520|
|33645| Angela | 1| 3443|3443|
|45692 | Frank  |17| 1608|27336|
|56118| Patrick  |7| 1345|9415|
|59725  |Lisa | 11| 2330|25630|
|74197  | Kimberly | 16| 4372|69952|
|78454  | Bonnie | 8| 1771|14168|
|83565  | Michael | 6| 2017|12102|
|98607  | Todd | 5| 3396|16980|
|99989  | Joe | 9| 3573|32157|

The maximum earnings value is 69952. The only employee with earnings =69952 is Kimberly, so we print the maximum earnings value (69952) and a count of the number of employees who have earned  $69952(which is 1 ) as two space-separated values.



**Solution**

```sql

SELECT (salary * months) AS earnings, COUNT(*)
FROM Employee
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1;

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




**[Population Census](https://www.hackerrank.com/challenges/asian-population)**

Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

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
SELECT SUM(ci.POPULATION)
FROM CITY ci
JOIN COUNTRY co   
    ON ci.CountryCode= co.Code
WHERE co.CONTINENT='Asia'
```




**[Top Competitors](https://www.hackerrank.com/challenges/full-score)**

Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

Input Format

The following tables contain contest data:

Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.

|  Column | Type |
|---|---|
| hacker_id  | Integer |
| name | String |


Difficulty: The difficult_level is the level of difficulty of the challenge, and score is the score of the challenge for the difficulty level. 

|  Column | Type |
|---|---|
| difficulty_level  | Integer |
| score | Integer |

Challenges: The challenge_id is the id of the challenge, the hacker_id is the id of the hacker who created the challenge, and difficulty_level is the level of difficulty of the challenge. 

|  Column | Type |
|---|---|
| submission_id  | Integer |
| hacker_id  | Integer |
| difficulty_level  | Integer |


Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, challenge_id is the id of the challenge that the submission belongs to, and score is the score of the submission. 

|  Column | Type |
|---|---|
| submission_id  | Integer |
| hacker_id  | Integer |
| challange_id  | Integer |
| score | Integer |

Explanation

Hacker 86870 got a score of 30 for challenge 71055 with a difficulty level of 2, so 86870 earned a full score for this challenge.

Hacker 90411 got a score of 30 for challenge 71055 with a difficulty level of 2, so 90411 earned a full score for this challenge.

Hacker 90411 got a score of 100 for challenge 66730 with a difficulty level of 6, so 90411 earned a full score for this challenge.

Only hacker 90411 managed to earn a full score for more than one challenge, so we print the their hacker_id and name as  2 space-separated values.




**Solution**

```sql


```


```
ADVANCE SELECT
```

**[Type of Triangles](https://www.hackerrank.com/challenges/what-type-of-triangle)**

Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with 3 sides of equal length.
Isosceles: It's a triangle with 2 sides of equal length.
Scalene: It's a triangle with  3 sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.

Input Format

The TRIANGLES table is described as follows:
|  Column | Type |
|---|---|
| A  | Integer |
| B  | Integer |
| C  | Integer |

Each row in the table denotes the lengths of each of a triangle's three sides.

Sample Input

|  A | B | C|
|---|---|---|
| 20 | 20  |23|
| 20  | 20 |22|
| 20  | 21 |20|
| 13 | 14 |30|


Sample Output
```
Isosceles
Equilateral
Scalene
Not A Triangle
```

Explanation

Values in the tuple (20,20,23) form an Isosceles triangle, because A≡B.
Values in the tuple (20,20,20) form an Equilateral triangle, because A≡B≡C. 
Values in the tuple (20,21,22)  form a Scalene triangle, because A≠B≠C.
Values in the tuple (13,14,30) cannot form a triangle because the combined value of sides A and B is not larger than that of side C.

**Solution**

```sql

SELECT
  CASE WHEN (A + B <= C) OR (B + C <= A) OR (A + C <= B) THEN 'Not A Triangle'
    WHEN (A = B) AND (B = C) THEN 'Equilateral' 
    WHEN ((A = B) &(A != C)) OR ((B = C) &(B != A)) OR ((A = C) &(A != B)) THEN 'Isosceles'
    WHEN (A != B) AND (B != C) AND (A != C) THEN 'Scalene'
END AS Triangle_Type
FROM
  TRIANGLES;
```



```
ALTERNATIVE QUERIES
```
**[Draw a Triangle 1 ](https://www.hackerrank.com/challenges/draw-the-triangle-1)**


P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

```
* * * * * 
* * * * 
* * * 
* * 
*

```

Write a query to print the pattern P(20).


**Solution**

```sql

SET @number = 21;
SELECT REPEAT('* ', @number := @number -1) 
FROM INFORMATION_SCHEMA.TABLES          --allows you to get information about all tables and views within a database. 
```



**[Draw a Triangle 2 ](https://www.hackerrank.com/challenges/draw-the-triangle-2)**

P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

```
* 
* * 
* * * 
* * * * 
* * * * * 
```

Write a query to print the pattern P(20).

```sql
SET @number= 0;
SELECT REPEAT("* ", @number := @number+1 )
FROM INFORMATION_SCHEMA.TABLES
WHERE @number < 20
```

