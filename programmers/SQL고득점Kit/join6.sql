-- 없어진 기록 찾기
SELECT O.ANIMAL_ID, O.NAME
FROM ANIMAL_OUTS AS O
    LEFT JOIN ANIMAL_INS AS I
    ON O.ANIMAL_ID = I.ANIMAL_ID
WHERE I.ANIMAL_ID IS NULL