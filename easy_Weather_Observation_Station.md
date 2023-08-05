**Weather Observation Station**

*NOTE:- Questions of Weather Observation Station from 1-17 -- # Difficulty: Easy*



**[Weather Observation Station 1](https://www.hackerrank.com/challenges/weather-observation-station-1)**

Query a list of CITY and STATE from STATION.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**
```sql
SELECT CITY, STATE
FROM STATION;     
```



**[Weather Observation Station 2](https://www.hackerrank.com/challenges/weather-observation-station-2)**

Query the following two values from the STATION table:

1. The sum of all values in LAT_N rounded to a scale of 2 decimal places.

2. The sum of all values in LONG_W rounded to a scale of 2 decimal places.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

*Output Format*

Your results must be in the form:

```lat lon```

where lat is the sum of all values in LAT_N and lon is the sum of all values in LONG_W. Both results must be rounded to a scale of 2 decimal places.


**Solution**
```sql
SELECT ROUND(SUM(LAT_N),2) AS round_sum_lat_n, 
       ROUND(SUM(LONG_W),2) AS round_sum_long_w
FROM STATION;
```




**[Weather Observation Station 3](https://www.hackerrank.com/challenges/weather-observation-station-3)**

Query a list of CITY names from STATION with even ID numbers only. You may print the results in any order, but must exclude duplicates from your answer.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**
```sql
SELECT DISTINCT CITY
FROM STATION 
WHERE MOD(ID,2) = 0
ORDER BY CITY;      
```


**[Weather Observation Station 4](https://www.hackerrank.com/challenges/weather-observation-station-4)**

Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
The STATION table is described as follows:

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'. The query returns 1, because total number of records - number of unique city names.

**Solution**
```sql
SELECT count(CITY)- count(DISTINCT CITY)
FROM STATION;      
```



**[Weather Observation Station 5](https://www.hackerrank.com/challenges/weather-observation-station-5)**

Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

*Sample Input*

For example, CITY has four entries: DEF, ABC, PQRS and WXY.

*Sample Output*
```
ABC 3 

PQRS 4
```

*Explanation*
When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths  3,3,4 and 3. The longest name is PQRS, but there are  options for shortest named city. Choose ABC, because it comes first alphabetically.

*Note*
You can write two separate queries to get the desired output. It need not be a single query.

**Solution**
```sql
(SELECT CITY, length(CITY)
FROM STATION 
ORDER BY  length(CITY) ASC, CITY LIMIT  1)
UNION
(SELECT CITY, length(CITY)
FROM STATION 
ORDER BY  length(CITY) DESC, CITY LIMIT  1)
```



**[Weather Observation Station 6](https://www.hackerrank.com/challenges/weather-observation-station-6)**

Query the list of CITY names starting with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**
```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY like "a%"  OR
      CITY like "e%"  OR
      CITY like "i%"  OR
      CITY like "o%"  OR
      CITY like "u%" 
ORDER BY CITY;       
```



**[Weather Observation Station 7](https://www.hackerrank.com/challenges/weather-observation-station-7)**

Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**
```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY like "%a"  OR
      CITY like "%e"  OR
      CITY like "%i"  OR
      CITY like "%o"  OR
      CITY like "%u" 
ORDER BY CITY;   
```

**[Weather Observation Station 8](https://www.hackerrank.com/challenges/weather-observation-station-8)**

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**
```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP "^[a,e,i,o,u]" AND 
      CITY REGEXP "[a,e,i,o,u]$";  
```



**[Weather Observation Station 9](https://www.hackerrank.com/challenges/weather-observation-station-9)**

Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**
```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP "^[a,e,i,o,u]";    
```



**[Weather Observation Station 10](https://www.hackerrank.com/challenges/weather-observation-station-10)**

Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**
```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP "[a,e,i,o,u]$"; 
```



**[Weather Observation Station 11](https://www.hackerrank.com/challenges/weather-observation-station-11)**

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**
```sql
SELECT DISTINCT CITY
FROM STATION 
WHERE CITY NOT REGEXP "^[a,e,i,o,u]" OR
      CITY NOT REGEXP "[a,e,i,o,u]$"; 
```



**[Weather Observation Station 12](https://www.hackerrank.com/challenges/weather-observation-station-12)**

Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**
```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP "^[a,e,i,o,u]" AND
      CITY NOT REGEXP "[a,e,i,o,u]$";
```

**[Weather Observation Station 13](https://www.hackerrank.com/challenges/weather-observation-station-13)**

Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880  and less than 137.2345. Truncate your answer to 4 decimal places.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**
```sql
SELECT ROUND(SUM(LAT_N),4)
FROM STATION
WHERE LAT_N>38.7880 AND 
      LAT_N<137.2345;
```



**[Weather Observation Station 14](https://www.hackerrank.com/challenges/weather-observation-station-14)**


Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.


**Solution**
```sql

SELECT MAX(ROUND(LAT_N,4))
FROM STATION
WHERE LAT_N< 137.2345;

```



**[Weather Observation Station 15](https://www.hackerrank.com/challenges/weather-observation-station-15)**

Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345 . Round your answer to  4 decimal places.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.


**Solution**
```sql

SELECT ROUND(LONG_W,4)
FROM STATION 
WHERE LAT_N <137.2345
ORDER BY LAT_N DESC
LIMIT 1;

```


**[Weather Observation Station 16](https://www.hackerrank.com/challenges/weather-observation-station-16)**

Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780 . Round your answer to  4 decimal places.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.


**Solution**
```sql

SELECT MIN(ROUND(LAT_N,4))
FROM STATION
WHERE LAT_N> 38.7780;

```


**[Weather Observation Station 17](https://www.hackerrank.com/challenges/weather-observation-station-17)**

Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780 . Round your answer to  4 decimal places.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**
```sql
SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N>38.7780
ORDER BY LAT_N ASC
LIMIT 1;
```





**[Weather Observation Station 18-CHALLANGE]--MEDIUM LEVEL--(https://www.hackerrank.com/challenges/weather-observation-station-18)**

P1(a,b) and P2(c,d) to be two points on a 2D plane.

a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
b  happens to equal the minimum value in Western Longitude (LONG_W in STATION).
c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
d happens to equal the maximum value in Western Longitude (LONG_W in STATION).


Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

Input Format
The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

PS: Manhattan Distance: The distance between two points measured along axes at right angles. In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|.

**Solution**

```sql
SELECT ROUND(
       ABS((MIN(LAT_N)-MAX(LAT_N))) 
       + 
       ABS((MIN(LONG_W) -MAX(LONG_W))
       ),4) AS manhattan_distance
FROM STATION;
```


**[Weather Observation Station 19-CHALLANGE]--MEDIUM LEVEL--(https://www.hackerrank.com/challenges/weather-observation-station-19)**

P1(a,c) and P2(b,d) to be two points on a 2D plane. where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and   (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points P1 and  P2 and format your answer to display  4 decimal digits.
Input Format
The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

PS: two dimension Euclidean Distance: 
d = √[ (x2– x1)^2 + (y2– y1)^2]
where,(x1, y1) are the coordinates of one point.
(x2, y2) are the coordinates of the other point.
d is the distance between (x1, y1) and (x2, y2).

**Solution**

```sql
SELECT
    ROUND(SQRT(
        POWER(MAX(LAT_N)  - MIN(LAT_N),  2)
      + 
        POWER(MAX(LONG_W) - MIN(LONG_W), 2)
    ), 4) AS Euclidean_distance
FROM STATION;
```


**[Weather Observation Station 20-CHALLANGE]--MEDIUM LEVEL--(https://www.hackerrank.com/challenges/weather-observation-station-20)**

A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**

```sql

SELECT ROUND(AVG(LAT_N),4) FROM
(Select *, ROW_NUMBER() OVER( ORDER BY LAT_N ASC) AS LAT_N_AS,
            ROW_NUMBER() OVER( ORDER BY LAT_N DESC) AS LAT_N_DESC
FROM STATION ) as S

WHERE LAT_N_AS in(LAT_N_DESC, LAT_N_DESC+1, LAT_N_DESC-1)

```



