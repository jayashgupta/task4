# task 4 - 
use library;
select * from books;

# agrregate function-
SELECT MemberID, COUNT(*) AS TotalBooksBorrowed FROM Borrowing GROUP BY MemberID;
SELECT Author, AVG(PublishedYear) AS AverageYear FROM Books GROUP BY Author;
SELECT LibrarianID, COUNT(*) AS TotalBooksIssued FROM Borrowing GROUP BY LibrarianID;
SELECT BookID, COUNT(*) AS TimesBorrowed FROM Borrowing GROUP BY BookID;

# having
SELECT LibrarianID, COUNT(*) AS TotalBooksIssued FROM Borrowing GROUP BY LibrarianID HAVING COUNT(*) > 3;



