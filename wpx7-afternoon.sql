--TABLE-PEOPLE

--PROBELM 1
CREATE TABLE Person ( ID INTEGER PRIMARY KEY AUTOINCREMENT, Name string, Age integer, Height integer, City string, FavoriteColor string );

--PROBELM 2
INSERT INTO Person(Name, Age, Height, City, FavoriteColor) VALUES ('eric rivas', 21, 182, 'los angeles', 'red' );
INSERT INTO Person(Name, Age, Height, City, FavoriteColor) VALUES ('austin grubb', 22, 162, 'salt lake', 'tan' );
INSERT INTO Person(Name, Age, Height, City, FavoriteColor) VALUES ('arisztid munoz', 20, 164, 'laveen', 'red' );
INSERT INTO Person(Name, Age, Height, City, FavoriteColor) VALUES ('john munoz', 43, 150, 'phoenix', 'black' );
INSERT INTO Person(Name, Age, Height, City, FavoriteColor) VALUES ('will trejo', 24, 132, 'seattle', 'yellow' );

--PROBLEM 3
select * from person order by height desc;

--PROBLEM 4
select * from person order by height asc;

--PROBLEM 5
select * from person order by age desc;

--PROBLEM 6
select * from person where age > 20;

--PROBLEM 7
select * from person where age = 18;

--PROBLEM 8
select * from person where age < 20 or age > 30;

--PROBLEM 9
select * from person where age != 27;

--PROBLEM 10
select * from person where FavoriteColor != 'red';

--PROBLEM 11
select * from person where FavoriteColor != 'blue' and FavoriteColor !='red';

--PROBLEM 12
select * from person where FavoriteColor = 'orange' or FavoriteColor ='green';

--PROBLEM 13
select * from person where FavoriteColor in('orange', 'green', 'blue')

--PROBLEM 14
select * from person where FavoriteColor in('yellow', 'purple');


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
select * from orders;

--PROBLEM 4
select sum(Quantity) from orders;

--PROBLEM 5
select sum(ProductPrice) from orders;

--PROBLEM 6
select sum(ProductPrice * Quantity) from orders where PersonID = 1;


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
select * from Artist where name like 'black%';

--PROBLEM 5
select * from Artist where name like '%black%';


--TABLE-EMPLOYEE

--PROBLEM 1
SELECT firstname, lastname FROM employee where city = 'Calgary';

--PROBLEM 2
select firstname, lastname, max(BirthDate) from employee;

--PROBLEM 3
select firstname, lastname, min(BirthDate) from employee;

--PROBLEM 4
select * from employee where reportsTo = 2;

--PROBELM 5
SELECT COUNT(*) FROM Employee WHERE City = "Lethbridge";


--TABLE-INVOICE

--PROBLEM 1
select count(*) from invoice where billingcountry = 'USA';

--problem 2
select max(total) from invoice;

--PROBELM 3
select MIN(total) from invoice;

--PROBLEM 4
select * from invoice where total > '5';

--PROBLEM 5
SELECT COUNT(total < 5) from invoice;

--PROBLEM 6
select count(*) from invoice where billingstate in('CA', 'TX', 'AZ');

--PROBLEM 7
SELECT avg(total) from invoice;

--PROBLEM 8
SELECT SUM(total) from invoice;