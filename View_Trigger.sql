CREATE DATABASE Restaurant
USE Restaurant

CREATE TABLE Meals
(
Id INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR(225),
Price DECIMAL(3,1),
)


CREATE TABLE Orders
(
Id INT PRIMARY KEY IDENTITY,
[Order No.] INT,

)

CREATE TABLE [Table]
(
Id INT PRIMARY KEY IDENTITY,
[Table No.] INT
)

CREATE TABLE MealsOrders
(Id INT PRIMARY KEY IDENTITY,
MealsID INT FOREIGN KEY REFERENCES Meals(Id),
OredrsID INT FOREIGN KEY REFERENCES Orders(Id)
)

CREATE TABLE TablesOrders
(Id INT PRIMARY KEY IDENTITY,
TablesID INT FOREIGN KEY REFERENCES [Table](Id),
OredrsID INT FOREIGN KEY REFERENCES Orders(Id)
)