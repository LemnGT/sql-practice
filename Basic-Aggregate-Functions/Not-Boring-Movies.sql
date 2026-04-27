-- Problem: Not Boring Movies
--
-- Goal: Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
-- 

SELECT * FROM Cinema
WHERE id%2=1 AND  description != "boring"
/*
  Another way of WHERE
  WHERE MOD(id,2)=1 AND NOT description = "boring" 
  */
ORDER BY rating DESC
