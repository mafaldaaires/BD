SELECT StaffId 
FROM STAFF
WHERE Supervisor is NULL
UNION 
SELECT Manager 
FROM DEPARTMENT;