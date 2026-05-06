-- Problem: Average Selling Price
--
-- Goal: Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places. 
--       If a product does not have any sold units, its average selling price is assumed to be 0.
-- 
SELECT p.product_id, IFNULL(ROUND(SUM(p.price*u.units)/SUM(u.units), 2),0) as average_price
FROM Prices as p
LEFT JOIN UnitsSold as u
ON p.product_id=u.product_id AND (u.purchase_date BETWEEN p.start_date AND p.end_date)
GROUP BY p.product_id
