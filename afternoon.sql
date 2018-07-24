--TABLE-PEOPLE

--PROBELM 1

CREATE TABLE Person ( ID INTEGER PRIMARY KEY AUTOINCREMENT, Name string, Age integer, Height integer, City string, FavoriteColor string );

--PROBELM 2
INSERT INTO Person(Name, Age, Height, City, FavoriteColor) VALUES ('eric rivas', 21, 182, 'los angeles', 'red' );
INSERT INTO Person(Name, Age, Height, City, FavoriteColor) VALUES ('austin grubb', 22, 162, 'salt lake', 'tan' );
INSERT INTO Person(Name, Age, Height, City, FavoriteColor) VALUES ('arisztid munoz', 20, 164, 'laveen', 'red' );
INSERT INTO Person(Name, Age, Height, City, FavoriteColor) VALUES ('john munoz', 43, 150, 'phoenix', 'black' );
INSERT INTO Person(Name, Age, Height, City, FavoriteColor) VALUES ('will trejo', 24, 132, 'seattle', 'yellow' );

--PROBELM 3
SELECT * FROM Person ORDER BY Height DESC;

--PROBLEM 4
SELECT * FROM Person ORDER BY height ASC;

--PROBELM 5
SELECT * FROM Person ORDER BY age DESC;

--PROBLEM 6
SELECT * FROM Person WHERE Age >20;

--PROBLEM 7
SELECT * FROM Person WHERE Age = 18;

--PROBLEM 8
SELECT * FROM Person WHERE Age < 20 OR Age > 30;

--PROBLEM 9
SELECT * FROM Person WHERE Age != 27;

--PROBELM 10
SELECT * FROM Person WHERE FavoriteColor != "red";

--PROBLEM 11
SELECT * FROM Person WHERE FavoriteColor != "red" AND FavoriteColor != "blue";

--PROBLEM 12
SELECT * FROM Person WHERE FavoriteColor = "orange" OR FavoriteColor = "green";

--PROBLEM 13
SELECT * FROM Person WHERE FavoriteColor IN ( "orange", "green", "blue" );

--PROBLEM 14
SELECT * FROM Person WHERE FavoriteColor IN ("yellow", "purple");


--TABLE-ORDERS

--PROBLEM 1
CREATE TABLE Orders ( PersonID integer, ProductName string, ProductPrice float, Quantity integer );

--PROBLEM 2
INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity ) VALUES ( 1, "rocket", 13.50, 1000 );
INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity ) VALUES ( 2, "paint", 10.50, 103 );
INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity ) VALUES ( 3, "shoes", 1.50, 76 );
INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity ) VALUES ( 4, "hats", 122.50, 54 );
INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity ) VALUES ( 5, "underwear", 300.50, 20 );

--PROBLEM 3
SELECT * FROM orders;

--PROBLEM 4
SELECT SUM(Quantity) FROM Orders;

--PROBLEM 5
SELECT SUM(ProductPrice) FROM Orders;

--PROBLEM 6
SELECT SUM(ProductPrice * Quantity) FROM Orders WHERE PersonID = 1;


--TABLE-ARTIST

--PROBLEM 1
INSERT INTO Artist ( Name ) VALUES ( 'rap man' );
INSERT INTO Artist ( Name ) VALUES ( 'skat man' );
INSERT INTO Artist ( Name ) VALUES ( 'dat nam' );

--PROBLEM 2
SELECT * FROM Artist ORDER BY Name DESC LIMIT 10;

--PROBLEM 3
SELECT * FROM Artist ORDER BY Name ASC LIMIT 5;

--PROBLEM 4
SELECT * FROM Artist WHERE Name LIKE 'Black%';

--PROBLEM 5
SELECT * FROM Artist WHERE Name LIKE '%Black%';


--TABLE-EMPLOYEE

--PROBLEM 1
SELECT FirstName, LastName FROM Employee WHERE City = "Calgary";

--PROBLEM 2
SELECT FirstName, LastName, Max(BirthDate) FROM Employee;

--PROBLEM 3
SELECT FirstName, LastName, Min(BirthDate) FROM Employee;

--PROBLEM 4
SELECT * FROM Employee WHERE ReportsTo = 2;

--PROBLEM 5
SELECT COUNT(*) FROM Employee WHERE City = "Lethbridge";


--TABLE-INVOICE

--PROBLEM 1
SELECT Count(*) FROM Invoice WHERE BillingCountry = 'USA';

--PROBLEM 2
SELECT Max(total) FROM Invoice;

--PROBLEM 3
SELECT Min(total) FROM Invoice;

--PROBLEM 4
SELECT * FROM Invoice WHERE Total > 5;

--PROBLEM 5
SELECT COUNT(*) FROM Invoice WHERE Total < 5;

--PROBLEM 6
SELECT Count(*) FROM Invoice WHERE BillingState in ('CA', 'TX', 'AZ');

--PROBLEM 7
SELECT AVG(Total) FROM Invoice;

--PROBLEM 8
SELECT SUM(Total) FROM Invoice;