-- 서울에 위치한 식당 목록 출력하기
SELECT REST_INFO.REST_ID AS REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS, ROUND(SUM(REVIEW_SCORE)/COUNT(*),2) AS SCORE
FROM REST_INFO 
    JOIN REST_REVIEW
    ON REST_INFO.REST_ID = REST_REVIEW.REST_ID
WHERE ADDRESS LIKE "서울%"
GROUP BY REST_ID
ORDER BY SCORE DESC, FAVORITES DESC