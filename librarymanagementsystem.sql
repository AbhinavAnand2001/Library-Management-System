-- Create the LibraryManagementSystem database
CREATE DATABASE IF NOT EXISTS LibraryManagementSystem;
USE librarymanagementsystem;

-- Create the Library table
CREATE TABLE IF NOT EXISTS Library (
    name VARCHAR(255),
    address VARCHAR(255)
);

-- Insert data into the Library table
INSERT INTO Library (name, address)
VALUES
('Central Library', '123 Main Street'),
('City Library', '456 Elm Avenue'),
('Community Library', '789 Oak Boulevard'),
('University Library', '101 Pine Lane'),
('Public Library', '202 Maple Drive'),
('School Library', '303 Cedar Street'),
('County Library', '404 Birch Road'),
('State Library', '505 Spruce Court'),
('Town Library', '606 Pineapple Avenue'),
('Campus Library', '707 Mango Lane');

-- Create the Book table
CREATE TABLE IF NOT EXISTS Book (
    isbn VARCHAR(255),
    title VARCHAR(255),
    author VARCHAR(255),
    publicationYear INT,
    genre VARCHAR(255),
    language VARCHAR(255),
    pages INT,
    availability BOOLEAN
);

-- Insert data into the Book table
INSERT INTO Book (isbn, title, author, publicationYear, genre, language, pages, availability)
VALUES
('9780132350884', 'Python Programming', 'John Doe', 2020, 'Programming', 'English', 400, true),
('9780596009250', 'Learning SQL', 'Jane Smith', 2019, 'Database', 'English', 350, true),
('9781449314286', 'Java for Beginners', 'Mike Johnson', 2018, 'Programming', 'English', 300, false),
('9780134685991', 'Data Science Handbook', 'Emily Brown', 2021, 'Data Science', 'English', 450, true),
('9780735211292', 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Fiction', 'English', 250, true),
('9780061120084', 'To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction', 'English', 320, true),
('9780142437209', 'Pride and Prejudice', 'Jane Austen', 1813, 'Fiction', 'English', 400, false),
('9780345339706', 'The Hobbit', 'J.R.R. Tolkien', 1937, 'Fantasy', 'English', 320, true),
('9780439139592', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 1997, 'Fantasy', 'English', 400, true),
('9780547928227', 'The Hunger Games', 'Suzanne Collins', 2008, 'Science Fiction', 'English', 350, false);

-- Repeat the above pattern for the remaining tables: Member, Review, Reservation, Loan (Borrowing), Fine, Author, Genre, Language, Publisher, Return, Renewal, and Announcements.
-- Create the Member table
CREATE TABLE IF NOT EXISTS Member (
    id VARCHAR(255),
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(255),
    address VARCHAR(255),
    memberType VARCHAR(255),
    joinDate DATE
);

-- Insert data into the Member table
INSERT INTO Member (id, name, email, phone, address, memberType, joinDate)
VALUES
('001', 'John Doe', 'john.doe@example.com', '123-456-7890', '123 Main Street', 'Regular', '2022-01-01'),
('002', 'Jane Smith', 'jane.smith@example.com', '456-789-1230', '456 Elm Avenue', 'Premium', '2022-02-15'),
('003', 'Mike Johnson', 'mike.johnson@example.com', '789-123-4560', '789 Oak Boulevard', 'Regular', '2022-03-10'),
('004', 'Emily Brown', 'emily.brown@example.com', '234-567-8901', '101 Pine Lane', 'Premium', '2022-04-20'),
('005', 'Sarah Wilson', 'sarah.wilson@example.com', '345-678-9012', '202 Maple Drive', 'Regular', '2022-05-25'),
('006', 'David Miller', 'david.miller@example.com', '456-789-0123', '303 Cedar Street', 'Regular', '2022-06-30'),
('007', 'Lisa Davis', 'lisa.davis@example.com', '567-890-1234', '404 Birch Road', 'Premium', '2022-07-15'),
('008', 'Mark Wilson', 'mark.wilson@example.com', '678-901-2345', '505 Spruce Court', 'Regular', '2022-08-20'),
('009', 'Laura Moore', 'laura.moore@example.com', '789-012-3456', '606 Pineapple Avenue', 'Regular', '2022-09-10'),
('010', 'Eric Lee', 'eric.lee@example.com', '890-123-4567', '707 Mango Lane', 'Premium', '2022-10-05');

-- Create the Review table
CREATE TABLE IF NOT EXISTS Review (
    id VARCHAR(255),
    bookISBN VARCHAR(255),
    memberId VARCHAR(255),
    rating INT,
    comment VARCHAR(255),
    date DATE
);

-- Insert data into the Review table
INSERT INTO Review (id, bookISBN, memberId, rating, comment, date)
VALUES
('001', '9780132350884', '001', 4, 'Great book for beginners', '2022-01-05'),
('002', '9780596009250', '002', 5, 'Excellent resource', '2022-02-20'),
('003', '9781449314286', '003', 3, 'Good introduction', '2022-03-15'),
('004', '9780735211292', '004', 5, 'Classic novel', '2022-04-25'),
('005', '9780061120084', '005', 4, 'Must-read', '2022-05-30'),
('006', '9780142437209', '006', 3, 'Enjoyable read', '2022-06-10'),
('007', '9780345339706', '007', 5, 'Fantasy adventure', '2022-07-20'),
('008', '9780439139592', '008', 4, 'Magical world', '2022-08-05'),
('009', '9780547928227', '009', 3, 'Engaging storyline', '2022-09-15'),
('010', '9780735211292', '010', 5, 'Timeless classic', '2022-10-10');

-- Create the Reservation table
CREATE TABLE IF NOT EXISTS Reservation (
    id VARCHAR(255),
    bookISBN VARCHAR(255),
    memberId VARCHAR(255),
    reservationDate DATE,
    status VARCHAR(255)
);

-- Insert data into the Reservation table
INSERT INTO Reservation (id, bookISBN, memberId, reservationDate, status)
VALUES
('001', '9781449314286', '001', '2022-01-10', 'Pending'),
('002', '9780596009250', '002', '2022-02-25', 'Confirmed'),
('003', '9780061120084', '003', '2022-03-20', 'Pending'),
('004', '9780735211292', '004', '2022-04-30', 'Confirmed'),
('005', '9780345339706', '005', '2022-05-05', 'Pending'),
('006', '9780439139592', '006', '2022-06-15', 'Confirmed'),
('007', '9780547928227', '007', '2022-07-25', 'Pending'),
('008', '9780735211292', '008', '2022-08-10', 'Confirmed'),
('009', '9781449314286', '009', '2022-09-20', 'Pending'),
('010', '9780061120084', '010', '2022-10-15', 'Confirmed');

-- Continue creating tables and inserting data for the remaining entities (Loan, Fine, Author, Genre, Language, Publisher, Return, Renewal, and Announcements).
-- Create the Loan table
CREATE TABLE IF NOT EXISTS Loan (
    id VARCHAR(255),
    bookISBN VARCHAR(255),
    memberId VARCHAR(255),
    loanDate DATE,
    dueDate DATE,
    returnDate DATE,
    fineAmount DECIMAL(10, 2),
    status VARCHAR(255),
    action VARCHAR(255)
);

-- Insert data into the Loan table
INSERT INTO Loan (id, bookISBN, memberId, loanDate, dueDate, returnDate, fineAmount, status, action)
VALUES
('001', '9780132350884', '001', '2022-01-02', '2022-02-02', '2022-02-01', 0.00, 'Returned', NULL),
('002', '9780596009250', '002', '2022-02-17', '2022-03-17', NULL, 0.00, 'Active', NULL),
('003', '9781449314286', '003', '2022-03-12', '2022-04-12', NULL, 0.00, 'Active', NULL),
('004', '9780735211292', '004', '2022-04-22', '2022-05-22', NULL, 0.00, 'Active', NULL),
('005', '9780061120084', '005', '2022-05-27', '2022-06-27', NULL, 0.00, 'Active', NULL),
('006', '9780142437209', '006', '2022-06-07', '2022-07-07', NULL, 0.00, 'Active', NULL),
('007', '9780345339706', '007', '2022-07-17', '2022-08-17', NULL, 0.00, 'Active', NULL),
('008', '9780439139592', '008', '2022-08-02', '2022-09-02', NULL, 0.00, 'Active', NULL),
('009', '9780547928227', '009', '2022-09-12', '2022-10-12', NULL, 0.00, 'Active', NULL),
('010', '9780735211292', '010', '2022-10-07', '2022-11-07', NULL, 0.00, 'Active', NULL);

-- Create the Fine table
CREATE TABLE IF NOT EXISTS Fine (
    id VARCHAR(255),
    memberId VARCHAR(255),
    amount DECIMAL(10, 2),
    date DATE,
    paid BOOLEAN
);

-- Insert data into the Fine table
INSERT INTO Fine (id, memberId, amount, date, paid)
VALUES
('001', '001', 0.00, '2022-02-01', true),
('002', '003', 0.00, '2022-04-12', false),
('003', '005', 0.00, '2022-06-27', false),
('004', '007', 0.00, '2022-08-17', false),
('005', '009', 0.00, '2022-10-12', false),
('006', '002', 0.00, '2022-03-17', true),
('007', '004', 0.00, '2022-05-22', true),
('008', '006', 0.00, '2022-07-07', true),
('009', '008', 0.00, '2022-09-02', true),
('010', '010', 0.00, '2022-11-07', false);

-- Create the Author table
CREATE TABLE IF NOT EXISTS Author (
    id VARCHAR(255),
    name VARCHAR(255),
    biography TEXT,
    birthDate DATE,
    deathDate DATE
);

-- Insert data into the Author table
INSERT INTO Author (id, name, biography, birthDate, deathDate)
VALUES
('001', 'John Doe', 'Author of several programming books', '1975-01-01', NULL),
('002', 'Jane Smith', 'Experienced SQL expert', '1980-03-15', NULL),
('003', 'Mike Johnson', 'Java instructor and author', '1985-05-20', NULL),
('004', 'Emily Brown', 'Data science practitioner', '1990-07-25', NULL),
('005', 'F. Scott Fitzgerald', 'Renowned American author', '1896-09-24', '1940-12-21'),
('006', 'Harper Lee', 'Pulitzer Prize-winning author', '1926-04-28', '2016-02-19'),
('007', 'Jane Austen', 'Classic English novelist', '1775-12-16', '1817-07-18'),
('008', 'J.R.R. Tolkien', 'Fantasy literature master', '1892-01-03', '1973-09-02'),
('009', 'J.K. Rowling', 'Creator of the Harry Potter series', '1965-07-31', NULL),
('010', 'Suzanne Collins', 'Author of "The Hunger Games" trilogy', '1962-08-10', NULL);

-- Create the Genre table
CREATE TABLE IF NOT EXISTS Genre (
    id VARCHAR(255),
    name VARCHAR(255),
    description TEXT
);

-- Insert data into the Genre table
INSERT INTO Genre (id, name, description)
VALUES
('001', 'Programming', 'Books related to programming'),
('002', 'Database', 'Books related to database'),
('003', 'Fiction', 'Novels, stories, and literature'),
('004', 'Fantasy', 'Fantasy and magical stories'),
('005', 'Science Fiction', 'Science fiction novels and stories');

-- Create the Language table
CREATE TABLE IF NOT EXISTS Language (
    id VARCHAR(255),
    name VARCHAR(255),
    code VARCHAR(255)
);

-- Insert data into the Language table
INSERT INTO Language (id, name, code)
VALUES
('001', 'English', 'en');

-- Create the Publisher table
CREATE TABLE IF NOT EXISTS Publisher (
    id VARCHAR(255),
    name VARCHAR(255),
    address VARCHAR(255),
    contact VARCHAR(255)
);

-- Insert data into the Publisher table
INSERT INTO Publisher (id, name, address, contact)
VALUES
('001', 'O''Reilly Media', '123 Tech Street', 'info@oreilly.com'),
('002', 'Addison-Wesley', '456 Book Avenue', 'info@aw.com'),
('003', 'Penguin Random House', '789 Publishing Road', 'info@penguin.com'),
('004', 'HarperCollins', '101 Fiction Lane', 'info@harper.com'),
('005', 'Scholastic', '202 Education Drive', 'info@scholastic.com');

-- Create the Return table
CREATE TABLE IF NOT EXISTS Return (
    id VARCHAR(255),
    loanId VARCHAR(255),
    returnDate DATE
);

-- Insert data into the Return table
INSERT INTO Return (id, loanId, returnDate)
VALUES
('001', '001', '2022-02-01'),
('002', NULL, NULL),
('003', NULL, NULL),
('004', NULL, NULL),
('005', NULL, NULL),
('006', NULL, NULL),
('007', NULL, NULL),
('008', NULL, NULL),
('009', NULL, NULL),
('010', NULL, NULL);

-- Create the Renewal table
CREATE TABLE IF NOT EXISTS Renewal (
    id VARCHAR(255),
    loanId VARCHAR(255),
    renewalDate DATE
);

-- Insert data into the Renewal table
INSERT INTO Renewal (id, loanId, renewalDate)
VALUES
('001', NULL, NULL),
('002', NULL, NULL),
('003', NULL, NULL),
('004', NULL, NULL),
('005', NULL, NULL),
('006', NULL, NULL),
('007', NULL, NULL),
('008', NULL, NULL),
('009', NULL, NULL),
('010', NULL, NULL);

-- Create the Announcements table
CREATE TABLE IF NOT EXISTS Announcements (
    id VARCHAR(255),
    title VARCHAR(255),
    description TEXT,
    date DATE
);

-- Insert data into the Announcements table
INSERT INTO Announcements (id, title, description, date)
VALUES
('001', 'Library Closure', 'The library will be closed for maintenance from 10th to 15th March.', '2022-03-01'),
('002', 'New Library Hours', 'Starting next month, the library will be open from 9 AM to 5 PM on weekdays.', '2022-04-01'),
('003', 'Book Donation Drive', 'Donate your old books to the library and help spread the joy of reading.', '2022-05-01'),
('004', 'Summer Reading Program', 'Join our summer reading program and win exciting prizes!', '2022-06-01'),
('005', 'Library Survey', 'Please take a moment to complete our library survey and share your feedback.', '2022-07-01'),
('006', 'Holiday Closure', 'The library will be closed for the Independence Day holiday on 4th July.', '2022-08-01'),
('007', 'Author Visit', 'Renowned author Jane Austen will be visiting the library for a book signing event on 16th July.', '2022-07-10'),
('008', 'Library Renovation', 'We are excited to announce that the library will undergo renovation starting next month.', '2022-09-01'),
('009', 'Winter Reading Challenge', 'Join our winter reading challenge and win prizes for reading books!', '2022-10-01'),
('010', 'Library Anniversary Celebration', 'Celebrate the library\'s anniversary with us on 15th November.', '2022-11-01');
-- Create the users table
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Insert data into the users table
INSERT INTO users (username, password)
VALUES
('user1', 'password1'),
('user2', 'password2'),
('user3', 'password3'),
('user4', 'password4'),
('user5', 'password5'),
('user6', 'password6'),
('user7', 'password7'),
('user8', 'password8'),
('user9', 'password9'),
('user10', 'password10');
INSERT INTO users (username, password)
VALUES
('u', 'p');
SELECT * FROM users
