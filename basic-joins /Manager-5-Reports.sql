-- Problem: Managers with at Least 5 Direct Reports
--
-- Goal: Write a solution to find managers with at least five direct reports.
-- 

SELECT e1.name FROM Employee as e1
JOIN (SELECT managerId, COUNT(id) as direct_reports FROM Employee GROUP BY managerId HAVING direct_reports>=5) as e2
ON e1.id = e2.managerId

/*
Another way of solving:
SELECT e1.name
FROM Employee AS e1 
INNER JOIN Employee AS e2 ON e1.id=e2.managerId 
GROUP BY e2.managerId
HAVING COUNT(e2.managerId) >= 5
*/
