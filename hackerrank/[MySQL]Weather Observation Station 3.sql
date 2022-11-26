-- 문제 링크 : https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
-- ID가 짝수인 CITY NAME을 중복 없이 출력

SELECT DISTINCT CITY FROM STATION WHERE ID % 2 = 0