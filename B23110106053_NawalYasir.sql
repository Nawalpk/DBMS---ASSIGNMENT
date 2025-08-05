DROP TABLE IF EXISTS books;

-- Create table
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    year_published INT,
    isAvailable BOOLEAN,
    price NUMERIC(8,2),
    publication VARCHAR(255)
);

-- Insert sample data
INSERT INTO books (title, author, year_published, isAvailable, price, publication) VALUES
('The Great Book', 'John Smith', 2001, TRUE, 450.00, 'XYZ'),
('1984', 'George Orwell', 1949, FALSE, 300.00, 'ABC'),
('Brave New World', 'Aldous Huxley', 1932, TRUE, 499.00, 'XYZ'),
('Sapiens', 'Yuval Noah Harari', 2011, TRUE, 899.00, 'Penguin'),
('The Catcher in the Rye', 'J.D. Salinger', 1951, FALSE, 320.00, 'XYZ'),
('Atomic Habits', 'James Clear', 2018, TRUE, 999.00, 'Penguin'),
('The Hobbit', 'J.R.R. Tolkien', 1937, TRUE, 700.00, 'HarperCollins'),
('The Alchemist', 'Paulo Coelho', 1988, TRUE, 550.00, 'ABC'),
('The Power of Habit', 'Charles Duhigg', 2012, TRUE, 650.00, 'XYZ'),
('Thinking Fast and Slow', 'Daniel Kahneman', 2011, TRUE, 800.00, 'FSG'),
('Zero to One', 'Peter Thiel', 2014, TRUE, 575.00, 'XYZ'),
('Deep Work', 'Cal Newport', 2016, TRUE, 625.00, 'ABC'),
('Educated', 'Tara Westover', 2018, TRUE, 400.00, 'XYZ'),
('Becoming', 'Michelle Obama', 2018, FALSE, 1100.00, 'Penguin'),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 1997, TRUE, 480.00, 'XYZ');

-- Queries
SELECT * FROM books WHERE year_published > 2000;

SELECT * FROM books WHERE price < 599.00 ORDER BY price DESC;

SELECT * FROM books ORDER BY price DESC LIMIT 3;

SELECT * FROM books ORDER BY year_published DESC OFFSET 2 LIMIT 2;

SELECT * FROM books WHERE publication = 'XYZ' ORDER BY title ASC;