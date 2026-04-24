-- Problem: Customer Who Visited but Did Not Make Any Transactions
--
-- Goal:
-- Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.
SELECT v.customer_id, COUNT(v.customer_id) as count_no_trans
FROM Visits as v
LEFT JOIN Transactions as t
ON v.visit_id=t.visit_id
WHERE t.visit_id IS NULL
GROUP BY v.customer_id
 
