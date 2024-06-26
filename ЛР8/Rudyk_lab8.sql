﻿SELECT TOP 1 WITH TIES MFR_ID, PRODUCT_ID ,DESCRIPTION,
LEN(DESCRIPTION) AS Lenght
FROM PRODUCTS
ORDER BY Lenght DESC;

SELECT CONCAT_WS(' ', RTRIM(MFR_ID), RTRIM(PRODUCT_ID), RTRIM(DESCRIPTION)) AS CONCAT_C,
LEN(CONCAT_WS(' ', RTRIM(MFR_ID), RTRIM(PRODUCT_ID), RTRIM(DESCRIPTION))) AS LEN_L
FROM PRODUCTS
WHERE PRODUCT_ID NOT LIKE '%[^0-9]%'
ORDER BY LEN_L DESC;

SELECT TOP 1 WITH TIES CUST_NUM,
CONCAT(LEFT(COMPANY, 2), REPLICATE('*', LEN(COMPANY)), RIGHT(COMPANY, 2)) AS NAME,
MIN(CREDIT_LIMIT) AS CREDIT_LIMIT
FROM CUSTOMERS
GROUP BY CUST_NUM, COMPANY
ORDER BY CREDIT_LIMIT;
