SELECT * FROM Employees

SELECT EmployeeID, FirstName, LastName FROM Employees

SELECT * --ทุกคอลัมน์
FROM Employees --จากตาราง Employees
WHERE City = 'London' --เฉพาะที่อยู่ใน London

SELECT Employeeid, FirstName, LastName 
FROM Employees
WHERE City = 'London'

SELECT City, Country
FROM Employees

SELECT DISTINCT City, Country
FROM Employees

select * from products
where UnitPrice > 200

select * from products
where UnitPrice <= 5

SELECT * 
FROM Customers
WHERE Country = 'USA'
OR City = 'Vancouver'

SELECT * 
FROM Products
WHERE UnitPrice >= 50
or UnitsInStock < 20

SELECT * 
FROM Products
WHERE UnitPrice BETWEEN 0 AND 10

SELECT * 
FROM Customers
WHERE Country IN('Brazil', 'Mexico', 'Argentina')


SELECT * 
FROM Customers
WHERE Country = 'Brazil'
OR Country = 'Mexico'
OR Country = 'Argentina'

--ไม่มี fax
SELECT * 
FROM Customers
WHERE not fax is NULL

--ลงท้ายด้วย land
SELECT * 
FROM Customers
WHERE Country like '%Land'

SELECT * 
FROM Customers
WHERE CompanyName like '%chi%'

--ประกอบด้วย nese
SELECT * 
FROM Customers
WHERE CompanyName like '%nese%'

--ประกอบด้วย ny
SELECT * 
FROM Customers
WHERE CompanyName like '%ny%'
or ContactName like '%ny%'

--มีขนาดชื่อต้น ถึง 5 ตัว
SELECT * 
FROM Employees
WHERE FirstName like '_____'

--ขึ้นต้นด้วย a และจบด้วย t
SELECT * 
FROM Employees
WHERE FirstName like '_a%t'

--ขึ้นต้นด้วย a r และ s
SELECT * 
FROM Employees
WHERE FirstName like '[ars]%'

--ขึ้นต้นด้วย a ถึง m
SELECT * 
FROM Employees
WHERE FirstName like '[a-m]%'

--เรียงจากมากไปน้อย
SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC

--
SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY CategoryID ASC, UnitPrice DESC
