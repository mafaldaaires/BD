SELECT REGION.Name, STAFF.Name
FROM REGION,STAFF
WHERE STAFF.StaffId = REGION.RegionManager 
#RegionManager e a chave externa que estabelece a ligacao entre as tabelas REGION e STAFF
ORDER BY REGION.Name ASC;