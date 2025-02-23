CREATE DATABASE bookdb;
USE bookdb;

CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    year INT
);

-- Insert initial data
INSERT INTO books (title, author, year) VALUES 
('The Great Gatsby', 'F. Scott Fitzgerald', 1925),
('1984', 'George Orwell', 1949),
('To Kill a Mockingbird', 'Harper Lee', 1960),
('Pride and Prejudice', 'Jane Austen', 1813),
('The Catcher in the Rye', 'J.D. Salinger', 1951);
