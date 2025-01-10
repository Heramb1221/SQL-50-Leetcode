SELECT product_id, new_price AS price  FROM Products
WHERE (product_id,change_DATE) IN (SELECT product_id, max(change_DATE) AS DATE FROM Products WHERE change_DATE <= '2019-08-16' GROUP BY product_id)
union
SELECT DISTINCT product_id, 10 AS price  FROM Products
WHERE product_id NOT IN (SELECT product_id FROM Products WHERE change_DATE <= '2019-08-16');