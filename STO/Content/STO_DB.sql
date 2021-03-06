create database TechServices_Shevchenko;
USE TechServices_Shevchenko;

--ME
CREATE TABLE [CATEGORY]
(
	ID INT PRIMARY KEY,
	[NAME] NVARCHAR(MAX)
);
--EGOR
CREATE TABLE CLIENT(
ID INT IDENTITY PRIMARY KEY NOT NULL,
FIO NVARCHAR(MAX) NOT NULL,
PHONE NVARCHAR(50) NOT NULL,
ADRESS NVARCHAR(50) NOT NULL,
[STATUS] NVARCHAR(50) NOT NULL
);
CREATE TABLE CAR(
ID INT IDENTITY PRIMARY KEY NOT NULL,
[CARNAME] NVARCHAR(50) NOT NULL,
[CARTYPE] NVARCHAR(50) NOT NULL,
);
--MATVEY
CREATE TABLE PRODUCT(
ID INT IDENTITY PRIMARY KEY NOT NULL,
[NAME] NVARCHAR(MAX) NOT NULL,
[DESCRIPTION] NVARCHAR(MAX) NULL,
[PRICE] DECIMAL(16,2) NULL,
CategoryID INT NULL,
CarID INT NULL,
FOREIGN KEY(CategoryID) REFERENCES [dbo].[CATEGORY] (ID),
FOREIGN KEY(CarID) REFERENCES [dbo].[Car] (ID),
);
--SASHA Z.
CREATE TABLE [ORDER](
ID INT IDENTITY PRIMARY KEY NOT NULL,
QUANTITY INT NOT NULL, 
IdProduct INT NOT NULL,
FOREIGN KEY(IDProduct) REFERENCES PRODUCT(ID)
);
--KOLYA
Create table GOODS(
ID INT IDENTITY PRIMARY KEY NOT NULL,
)
--DIMA
create table CART(
ID int identity primary key
);
create table [SERVICES](
ID int identity primary key,
ProductId int not null,
foreign key(ProductId) references [Product](Id)
);
--SASHA Z.
CREATE TABLE MASTERS(
ID INT IDENTITY PRIMARY KEY NOT NULL,
[NAME] NVARCHAR(MAX) NOT NULL
);
CREATE TABLE CART_ORDER(
IDOrder INT UNIQUE NOT NULL,
IDCart INT NOT NULL,
FOREIGN KEY(IDOrder) REFERENCES [ORDER](ID),
FOREIGN KEY(IDCart) REFERENCES CART(ID)
);
CREATE TABLE CLIENT_CART(
IDClient INT NOT NULL,
IDCart INT UNIQUE NOT NULL,
FOREIGN KEY(IDClient) REFERENCES [CLIENT](ID),
FOREIGN KEY(IDCart) REFERENCES CART(ID)
);
CREATE TABLE MASTERS_SERVICES(
IDMaster INT NOT NULL,
IDService INT NOT NULL,
FOREIGN KEY(IDMaster) REFERENCES MASTERS(ID),
FOREIGN KEY(IDService) REFERENCES [SERVICES](ID)
);
CREATE TABLE PRODUCT_GOODS(
IDGoods INT NOT NULL,
IDProduct INT NOT NULL,
FOREIGN KEY(IDGoods) REFERENCES PRODUCT(ID),
FOREIGN KEY(IDGoods) REFERENCES [GOODS](ID)
);



DROP TABLE PRODUCT_GOODS;
DROP TABLE MASTERS_SERVICES;
DROP TABLE CLIENT_CART;
DROP TABLE CART_ORDER;
DROP TABLE MASTERS;
DROP TABLE [SERVICES];
DROP TABLE CART;
DROP TABLE GOODS;
DROP TABLE [ORDER];
DROP TABLE PRODUCT;
DROP TABLE CAR;
DROP TABLE CLIENT;
DROP TABLE CATEGORY;
