--Problem: Rising Temperature
--
--Goal:
--Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

SELECT w1.id
FROM Weather as w1
LEFT JOIN Weather as w2
ON w2.recordDate = DATE_SUB(w1.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature>w2.temperature
