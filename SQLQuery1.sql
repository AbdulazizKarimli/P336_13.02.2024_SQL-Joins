--inner join
SELECT s.Id, s.Name, s.Point, sd.Age, 
	   sd.Email, sd.Address 
FROM Students AS s
JOIN StudentDetails AS sd
ON sd.StudentId=s.Id

--left join
SELECT s.Id, s.Name, s.Point, sd.Age, 
	   sd.Email, sd.Address 
FROM Students AS s
LEFT JOIN StudentDetails AS sd
ON sd.StudentId=s.Id

--right join
SELECT s.Id, s.Name, s.Point, sd.Age, 
	   sd.Email, sd.Address 
FROM Students AS s
RIGHT JOIN StudentDetails AS sd
ON sd.StudentId=s.Id

--full join
SELECT s.Id, s.Name, s.Point, sd.Age, 
	   sd.Email, sd.Address 
FROM Students AS s
FULL JOIN StudentDetails AS sd
ON sd.StudentId=s.Id

SELECT P.Id, P.Name, P.Price, P.StockCount, C.Name AS 'Category name' FROM Products AS P
JOIN Categories AS C
ON P.CategoryId=C.Id

CREATE TABLE Points(
	Id INT PRIMARY KEY IDENTITY,
	MinPoint INT NOT NULL,
	MaxPoint INT NOT NULL,
	Mark VARCHAR(1) NOT NULL
)

SELECT S.Id, S.Name, S.Point, P.Mark FROM Students AS S
JOIN Points AS P
ON S.Point >= P.MinPoint AND S.Point <= P.MaxPoint
ORDER BY S.Point DESC

CREATE TABLE Positions(
	Id INT PRIMARY KEY IDENTITY,
	PositionName NVARCHAR(50) NOT NULL,
	DependOn INT FOREIGN KEY REFERENCES Positions(Id)
)

SELECT P2.PositionName, P1.PositionName AS 'Depend on' FROM Positions AS P1
JOIN Positions AS P2
ON P2.DependOn=P1.Id