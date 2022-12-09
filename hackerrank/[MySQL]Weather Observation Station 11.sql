-- 문제링크 : https://www.hackerrank.com/challenges/weather-observation-station-11/problem

SELECT DISTINCT CITY FROM STATION 
WHERE RIGHT(CITY,1) NOT IN ('A', 'E', 'I', 'O', 'U') OR LEFT(CITY,1) NOT IN ('A', 'E', 'I', 'O', 'U')