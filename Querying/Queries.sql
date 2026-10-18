SELECT * FROM longlist
SELECT title, author FROM longlist
SELECT title FROM longlist LIMIT 5
SELECT title, author FROM longlist WHERE year = 2022

SELECT title, format FROM longlist WHERE format != 'hardcover'
SELECT title, format FROM longlist WHERE NOT format = 'hardcover'

SELECT title, format, year FROM longlist 
WHERE (year = 2022 OR year = 2023) AND format != 'hardcover'

SELECT title, translator FROM longlist WHERE translator IS NOT NULL

-- % matches strings anything that comes before or after 
SELECT title FROM longlist WHERE title LIKE '%love%'
SELECT title FROM longlist WHERE title LIKE 'The %'
-- _ matches a single character
SELECT title FROM longlist WHERE title LIKE 'P_re'
SELECT title FROM longlist WHERE title LIKE 'T___'

SELECT title, year FROM longlist WHERE year >= 2019 AND year <=2022
SELECT title, year FROM longlist WHERE year BETWEEN 2019 AND 2022

-- LIKE is case insensitive, = is case sensitive
SELECT title FROM longlist WHERE title LIKE 'pyre'
SELECT title FROM longlist WHERE title = 'pyre'

-- Default ordered by ascending
SELECT title, rating FROM longlist ORDER BY rating DESC LIMIT 10
SELECT title, rating, votes FROM longlist 
ORDER BY rating DESC, votes DESC 
LIMIT 10
SELECT title FROM longlist ORDER BY title


