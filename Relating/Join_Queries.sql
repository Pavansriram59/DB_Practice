-- Joining sea_lions & migrations table
SELECT * FROM sea_lions JOIN migrations
ON sea_lions.id = migrations.id

-- Left, Right, Full join
SELECT * FROM sea_lions LEFT JOIN migrations
ON sea_lions.id = migrations.id

-- Natural Join
SELECT * FROM sea_lions NATURAL JOIN migrations
