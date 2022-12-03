-- 문제 링크 : https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true

SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[AEIOU]' AND CITY REGEXP '[AEIOU]$'