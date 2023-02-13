SELECT MIN(Charge), MAX(Charge), AVG(Charge), SUM(Charge)
FROM STREAM
WHERE StreamDate LIKE '2017%';