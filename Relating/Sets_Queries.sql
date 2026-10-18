-- Intersect, Union & Except

-- Either authors or translators
SELECT name FROM translators 
UNION
SELECT name FROM authors

-- Both authors and translator
SELECT name FROM translators 
INTERSECT
SELECT name FROM authors

-- only author, only translator
SELECT name FROM translators 
EXCEPT
SELECT name FROM authors

-- books translated by Sophie Hughes
SELECT title FROM books WHERE id IN (
    SELECT book_id FROM translated
    WHERE translator_id = (
        SELECT id FROM translators
        WHERE name = 'Sophie Hughes'
    )
)