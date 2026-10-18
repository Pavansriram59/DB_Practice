SELECT ROUND(AVG(rating),2) AS average_rating FROM longlist

SELECT title, MAX(rating) AS max_rated_book FROM longlist
SELECT MAX(title), MIN(title) FROM longlist

SELECT SUM(votes) AS total_votes FROM longlist

SELECT COUNT(*) AS total_books FROM longlist

SELECT COUNT(DISTINCT publisher) FROM longlist