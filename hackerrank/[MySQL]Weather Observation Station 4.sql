-- 문제 링크 : https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
-- 전체 CITY수에서 중복 제거한 CITY수를 빼주는 문제
SELECT COUNT(ALL CITY) - COUNT(DISTINCT CITY) FROM STATION