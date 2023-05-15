Weather Observation Station

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



**[Weather Observation Station 2](Not Avaliable)**




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

ABC 3 

PQRS 4

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

**[Weather Observation Station 8](https://www.hackerrank.com/challenges/weather-observation-station-8/problem)**

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



**[Weather Observation Station 9](https://www.hackerrank.com/challenges/weather-observation-station-9/problem)**

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



**[Weather Observation Station 10](https://www.hackerrank.com/challenges/weather-observation-station-10/problem)**

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



**[Weather Observation Station 11](https://www.hackerrank.com/challenges/weather-observation-station-11/problem)**

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



**[Weather Observation Station 12](https://www.hackerrank.com/challenges/weather-observation-station-12/problem)**

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

![image](https://github.com/btrcmrv/SQL-HackerRank-Problems-BasicSelect/assets/133340167/4008b2cf-b00e-48aa-b00d-b4a23f52f8b8)

