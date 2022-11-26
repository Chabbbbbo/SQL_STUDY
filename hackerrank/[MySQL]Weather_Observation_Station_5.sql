-- 문제 링크 : https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=false
-- STATION에서 CITY의 이름이 가장 짧은 것과 긴 것을 1개씩 출력하는 문제
-- 같은 길이는 알파벳으로 정렬하여 첫번째로 출력함

SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) ASC, CITY ASC LIMIT 1 ;
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY DESC LIMIT 1

--추가로 띄어쓰기 없이 글자값 출력은 CHAR_LENGTH(col)인데, 이걸로도 돌려본 결과 맞게 나옴
SELECT CITY, CHAR_LENGTH(CITY) FROM STATION ORDER BY CHAR_LENGTH(CITY) ASC, CITY ASC LIMIT 1 ;
SELECT CITY, CHAR_LENGTH(CITY) FROM STATION ORDER BY CHAR_LENGTH(CITY) DESC, CITY DESC LIMIT 1 