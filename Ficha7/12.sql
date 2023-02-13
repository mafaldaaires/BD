DELETE FROM STREAM
WHERE STREAM.Charge <= 5.5 AND CustomerId IN(
    SELECT CustomerId
    FROM CUSTOMER
    WHERE CUSTOMER.Country = 'China'
);