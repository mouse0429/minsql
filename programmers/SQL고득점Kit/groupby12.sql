-- 입양 시각 구하기(1)
SELECT HOUR(DATETIME) AS HOUR, COUNT(*) AS COUNT
FROM ANIMAL_OUTS
WHERE HOUR(DATETIME) >= "09" AND HOUR(DATETIME) <= "19"
GROUP BY HOUR(DATETIME)
ORDER BY HOUR(DATETIME)