-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS BrendenBookstoreDB;
-- Switch to the newly created database
USE BrendenBookstoreDB;

-- Create the "category" table
CREATE TABLE IF NOT EXISTS category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Create the "book" table with a foreign key reference to "category_id"
CREATE TABLE IF NOT EXISTS book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255),
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    rating DECIMAL(3, 1) NOT NULL,
    is_public BOOLEAN NOT NULL,
    is_featured BOOLEAN NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);

-- Reset the AUTO_INCREMENT values for both tables
ALTER TABLE book AUTO_INCREMENT = 1001;
ALTER TABLE category AUTO_INCREMENT = 1001;

-- Insert data into the "category" table
INSERT INTO category (name) VALUES
    ('Classics'),
    ('Fantasy'),
    ('Mystery'),
    ('Romance');

-- Insert data into the "book" table
INSERT INTO book (title, author, description, price, rating, is_public, is_featured, category_id) VALUES
    ('The Iliad', 'Homer', '', 699, 3, 1, 0, 1001),
    ('The Brothers Karamazov', 'Fyodor Dostoyevski', '', 799, 3, 1, 0, 1001),
    ('Little Dorrit', 'Charles Dickens', '', 599, 3, 1, 0, 1001),
    ('The Housemaid', 'Freida McFadden', '', 599, 3, 1, 0, 1001),
    ('To Kill a Mockingbird', 'Harper Lee', 'Classic novel exploring racial injustice and moral growth.', 999, 4.5, 1, 0, 1001),
    ('1984', 'George Orwell', 'Dystopian novel depicting a totalitarian regime.', 1099, 4.4, 1, 1, 1002),
    ('Pride and Prejudice', 'Jane Austen', 'Classic romantic novel set in 19th-century England.', 899, 4.6, 1, 1, 1003),
    ('The Great Gatsby', 'F. Scott Fitzgerald', 'Exploration of the American Dream and excess in the Roaring Twenties.', 799, 4.3, 1, 0, 1004),
    ('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy novel about a young wizard.', 1199, 4.8, 1, 1, 1001),
    ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy adventure novel involving a hobbit and a dragon.', 849, 4.7, 1, 0, 1002),
    ('The Catcher in the Rye', 'J.D. Salinger', 'Coming-of-age novel following a teenage boy in New York.', 699, 4.0, 1, 0, 1003),
    ('To the Lighthouse', 'Virginia Woolf', 'Modernist novel exploring consciousness and perception.', 799, 4.2, 1, 1, 1004),
    ('Brave New World', 'Aldous Huxley', 'Dystopian novel depicting a technologically advanced future society.', 899, 4.1, 1, 1, 1001),
    ('The Lord of the Rings', 'J.R.R. Tolkien', 'Epic fantasy trilogy following a quest to destroy a powerful ring.', 1599, 4.9, 1, 0, 1002),
    ('Crime and Punishment', 'Fyodor Dostoevsky', 'Psychological novel exploring the consequences of a young man''s actions.', 849, 4.5, 1, 0, 1003),
    ('The Road', 'Cormac McCarthy', 'Post-apocalyptic novel about a father and son''s journey.', 749, 4.4, 1, 1, 1004),
    ('Moby Dick', 'Herman Melville', 'Adventure novel centered around Captain Ahab''s pursuit of a white whale.', 799, 4.3, 1, 0, 1001),
    ('The Road Not Taken', 'Robert Frost', 'Collection of renowned poems by Robert Frost.', 599, 4.6, 1, 0, 1002),
    ('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Exploration of the history and impact of Homo sapiens.', 1299, 4.7, 1, 1, 1003),
    ('Educated', 'Tara Westover', 'Memoir recounting a woman''s journey from a rural childhood to education and beyond.', 1099, 4.8, 1, 1, 1004);
