CREATE TABLE melons (
	id SERIAL PRIMARY KEY,
	type VARCHAR(30),
	name VARCHAR(30),
	price FLOAT,
	seedless BOOLEAN
);

INSERT INTO melons (type, name, price, seedless)
VALUES ('Musk', 'Honeydew', 1, False);

INSERT INTO melons (type, name, price, seedless)
VALUES
('Hybrid', 'Crenshaw', 2, False),
('Hybrid', 'Crane', 2.5, False),
('Musk', 'Casaba', 2.5, False),
('Musk', 'Cantaloupe', 0.99, False),
('Musk', 'Persian Melon', 3, False),
('Musk', 'Christmas Melon', 5.5, False),
('Musk', 'Armenian Cucumber', 4.5, False),
('Hybrid', 'Galia', 3.75, False),
('Winter', 'Winter Melon', 0.99, True),
('Musk', 'Canary', 1.5, False),
('Musk', 'Hami', 2.75, True),
('Watermelon', 'Densuke', 250, False),
('Watermelon', 'Ali Baba', 2.5, False),
('Watermelon', 'Ancient', 3, False),
('Watermelon', 'Arkansas Black', 4, False),
('Watermelon', 'Dixie Queen', 2, False),
('Watermelon', 'Blacktail Mountain', 2.75, True),
('Watermelon', 'Carolina Cross 180', 4.25, False),
('Watermelon', 'Charleston Gray', 2, False),
('Watermelon', 'Chris Cross', 2.5, False),
('Watermelon', 'Desert King', 2, False),
('Watermelon', 'Congo', 2, False),
('Watermelon', 'Crimson Sweet', 1.75, False);

SELECT * FROM melons;

SELECT name, price FROM melons;

SELECT * FROM melons
WHERE price > 3;

SELECT * FROM melons
WHERE name LIKE '%r';

SELECT MIN(price), MAX(price) FROM melons;

SELECT AVG(price), SUM(price) FROM melons;

SELECT type, COUNT(*) FROM melons
GROUP BY type
ORDER BY COUNT(*) DESC;

SELECT * FROM melons
ORDER BY name ASC 
OFFSET 4
LIMIT 10;

UPDATE melons
SET price = 2.50
WHERE id = 11;

DELETE FROM melons
WHERE id > 16;