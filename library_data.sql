create database library;
use library;

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    JoinDate DATE
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(150),
    Author VARCHAR(100),
    PublishedYear INT
);

CREATE TABLE Librarians (
    LibrarianID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Borrowing (
    BorrowID INT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    LibrarianID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (LibrarianID) REFERENCES Librarians(LibrarianID)
);

INSERT INTO Members (MemberID, Name, Email, JoinDate) VALUES
(1, 'Anita Sharma', 'anita.sharma@gmail.com', '2024-01-10'),
(2, 'Ravi Kumar', 'ravi.kumar@yahoo.com', '2023-11-05');

INSERT INTO Books (BookID, Title, Author, PublishedYear) VALUES
(101, 'The Alchemist', 'Paulo Coelho', 1988),
(102, 'Wings of Fire', 'A.P.J. Abdul Kalam', 1999);

INSERT INTO Librarians (LibrarianID, Name, Email) VALUES
(501, 'Suman Verma', 'suman.verma@library.org'),
(502, 'Rajeev Mehta', 'rajeev.mehta@library.org');

INSERT INTO Borrowing (BorrowID, MemberID, BookID, LibrarianID, BorrowDate, ReturnDate) VALUES
(1001, 1, 101, 501, '2025-06-01', '2025-06-10'),
(1002, 2, 102, 502, '2025-06-05', '2025-06-15');


select * from books where title is null;

update books set publishedyear=2000 where bookid=101;

delete from borrowing where borrowid=1002;

# task-3
select a.* , b.email from books as a join members as b on a.bookid=b.memberid;
select * from books where bookid=102;
select * from members order by name desc ;
select * from librarians limit 1;

INSERT INTO Members (MemberID, Name, Email, JoinDate) VALUES
(3, 'Priya Das', 'priya.das@gmail.com', '2024-02-14'),
(4, 'Manoj Singh', 'manoj.singh@yahoo.com', '2023-12-01'),
(5, 'Kiran Patel', 'kiran.patel@gmail.com', '2023-10-10'),
(6, 'Ayesha Khan', 'ayesha.khan@mail.com', '2024-03-25'),
(7, 'Vikram Joshi', 'vikram.joshi@gmail.com', '2024-01-19'),
(8, 'Sneha Roy', 'sneha.roy@outlook.com', '2024-04-04'),
(9, 'Arjun Mehta', 'arjun.mehta@gmail.com', '2023-09-23'),
(10, 'Divya Malhotra', 'divya.malhotra@mail.com', '2023-11-30'),
(11, 'Rohit Sinha', 'rohit.sinha@gmail.com', '2024-05-01'),
(12, 'Meena Reddy', 'meena.reddy@yahoo.com', '2024-06-01');
INSERT INTO Librarians (LibrarianID, Name, Email) VALUES
(503, 'Neha Kapoor', 'neha.kapoor@library.org'),
(504, 'Amit Thakur', 'amit.thakur@library.org'),
(505, 'Reema Sen', 'reema.sen@library.org'),
(506, 'Sunil Dube', 'sunil.dube@library.org'),
(507, 'Anjali Rana', 'anjali.rana@library.org'),
(508, 'Farhan Sheikh', 'farhan.sheikh@library.org'),
(509, 'Pooja Yadav', 'pooja.yadav@library.org'),
(510, 'Ramesh Goyal', 'ramesh.goyal@library.org'),
(511, 'Snehal Deshmukh', 'snehal.deshmukh@library.org'),
(512, 'Krishna Naik', 'krishna.naik@library.org');
INSERT INTO Borrowing (BorrowID, MemberID, BookID, LibrarianID, BorrowDate, ReturnDate) VALUES
(1003, 3, 103, 503, '2025-06-02', '2025-06-12'),
(1004, 4, 104, 504, '2025-06-03', '2025-06-13'),
(1005, 5, 105, 505, '2025-06-04', '2025-06-14'),
(1006, 6, 106, 506, '2025-06-06', '2025-06-16'),
(1007, 7, 107, 507, '2025-06-07', '2025-06-17'),
(1008, 8, 108, 508, '2025-06-08', '2025-06-18'),
(1009, 9, 109, 509, '2025-06-09', '2025-06-19'),
(1010, 10, 110, 510, '2025-06-10', '2025-06-20'),
(1011, 11, 111, 511, '2025-06-11', '2025-06-21'),
(1012, 12, 112, 512, '2025-06-12', '2025-06-22');

INSERT INTO Books (BookID, Title, Author, PublishedYear) VALUES
(103, '1984', 'George Orwell', 1949),
(104, 'The Monk Who Sold His Ferrari', 'Robin Sharma', 1997),
(105, 'Rich Dad Poor Dad', 'Robert T. Kiyosaki', 2000),
(106, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925),
(107, 'To Kill a Mockingbird', 'Harper Lee', 1960),
(108, 'Atomic Habits', 'James Clear', 2018),
(109, 'Sapiens', 'Yuval Noah Harari', 2011),
(110, 'The Power of Now', 'Eckhart Tolle', 1999),
(111, 'Think and Grow Rich', 'Napoleon Hill', 1937),
(112, 'Ikigai', 'Héctor García', 2016);

select * from librarians;

