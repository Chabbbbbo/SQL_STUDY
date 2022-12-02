-- 문제 링크 : https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true

SELECT DISTINCT CITY FROM STATION WHERE (CITY LIKE '%A' OR 
                                         CITY LIKE '%E' OR 
                                         CITY LIKE '%I' OR 
                                         CITY LIKE '%O' OR 
                                         CITY LIKE '%U')

-- 정규표현식 사용
SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '[AEIOU]$'