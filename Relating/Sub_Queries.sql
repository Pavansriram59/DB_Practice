-- Books which are published by 'Fitzcarraldo Editions' (books, publishers)
SELECT title FROM books
WHERE publisher_id = (
    SELECT id FROM publishers
    WHERE publisher = 'Fitzcarraldo Editions'
)

-- Average Rating of the book 'In Memory of Memory' (ratings, books)
SELECT ROUND(AVG(rating),2) AS average_rating FROM ratings
WHERE book_id = (
    SELECT id FROM books
    WHERE title = 'In Memory of Memory'
)

-- Nested Sub-Queries author who wrote book 'flights' (authors, authoured, books)
SELECT name FROM authors 
WHERE id = (
    SELECT author_id FROM authored 
    WHERE book_id = (
        SELECT id FROM books 
        WHERE title = 'Flights'
    )
)

-- books authored by 'Fernanda Melchor'
SELECT title FROM books WHERE id IN (
    SELECT book_id FROM authored
    WHERE author_id = (
        SELECT id FROM authors 
        WHERE name = 'Fernanda Melchor'
    )
)
