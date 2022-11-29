-- 문제 링크 : https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
-- 모음으로 시작하는 CITY NAME 출력

SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE 'a%' OR CITY LIKE 'e%' OR CITY LIKE 'i%' OR CITY LIKE 'o%' OR CITY LIKE 'u%'