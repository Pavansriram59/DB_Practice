-- No of books having rating > 4.0
SELECT book_id, COUNT(rating) FROM ratings
GROUP BY book_id

-- Books having average rating > 4
SELECT book_id, ROUND(AVG(rating),2) AS average_rating 
FROM ratings
GROUP BY book_id 
HAVING average_rating > 4.0
ORDER BY average_rating DESC