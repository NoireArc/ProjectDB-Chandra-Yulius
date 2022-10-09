CREATE DATABASE UniDlox
GO
USE UniDlox
GO

CREATE TABLE
StaffDetail(
	StaffID CHAR(5) PRIMARY KEY CHECK(StaffID LIKE 'SF[0-9][0-9][0-9]'),
	StaffName VARCHAR(50) NOT NULL,
	StaffPhoneNumber VARCHAR(20) NOT NULL,
	StaffAddress VARCHAR(50) CHECK(LEN(StaffAddress) BETWEEN 10 AND 15),
	StaffAge INT NOT NULL,
	StaffGender CHAR(10) CHECK(StaffGender IN ('Male','Female')),
	StaffSalary VARCHAR(20) NOT NULL
)

CREATE TABLE SupplierDetail(
	SupplierID CHAR(5) PRIMARY KEY CHECK(SupplierID LIKE 'SU[0-9][0-9][0-9]'),
	SupplierName VARCHAR(50) CHECK(LEN(SupplierName)>6),
	SupplierPhoneNumber VARCHAR(20) NOT NULL,
	SupplierAddress VARCHAR(50) NOT NULL
)

CREATE TABLE MaterialDetail(
	MaterialID CHAR(5) PRIMARY KEY CHECK(MaterialID LIKE 'MA[0-9][0-9][0-9]'),
	MaterialName VARCHAR(50) NOT NULL,
	MaterialPrice INT CHECK(MaterialPrice>0)
)

CREATE TABLE PaymentInfo(
	PaymentID CHAR(5) PRIMARY KEY CHECK(PaymentID LIKE 'PA[0-9][0-9][0-9]'),
	PaymentType VARCHAR(20) NOT NULL
)

CREATE TABLE PurchaseTransaction(
	PurchaseID CHAR(5) PRIMARY KEY CHECK(PurchaseID LIKE 'PU[0-9][0-9][0-9]'),
	StaffID CHAR(5) FOREIGN KEY REFERENCES StaffDetail(StaffID),
	SupplierID CHAR(5) FOREIGN KEY REFERENCES SupplierDetail(SupplierID),
	MaterialID CHAR(5) FOREIGN KEY REFERENCES MaterialDetail(MaterialID),
	TransactionDate DATE,
	PaymentType VARCHAR(20),
	Quantity INT NOT NULL
)

CREATE TABLE ClothDetail(
	ClothID CHAR(5) PRIMARY KEY CHECK(ClothID LIKE 'CL[0-9][0-9][0-9]'),
	ClothName VARCHAR(20) NOT NULL,
	Quantity INT CHECK(Quantity BETWEEN 0 AND 250),
	ClothPrice INT NOT NULL
)

CREATE TABLE CustomerDetail(
	CustomerID CHAR(5) PRIMARY KEY CHECK(CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(50) NOT NULL,
	CustomerPhoneNumber VARCHAR(20) NOT NULL,
	CustomerAddress VARCHAR(50) NOT NULL,
	CustomerGender CHAR(10) CHECK(CustomerGender IN ('Male','Female')),
	CustomerEmail VARCHAR(50) CHECK(CustomerEmail LIKE '%@gmail.com' OR CustomerEmail LIKE '%yahoo.com'),
	CustomerDOB DATE
)

CREATE TABLE SalesTransaction(
	SalesID CHAR(5) PRIMARY KEY CHECK(SalesID LIKE 'SA[0-9][0-9][0-9]'),
	StaffID CHAR(5) FOREIGN KEY REFERENCES StaffDetail(StaffID),
	CustomerID CHAR(5) FOREIGN KEY REFERENCES CustomerDetail(CustomerID),
	PaymentID CHAR(5) FOREIGN KEY REFERENCES PaymentInfo(PaymentID),
	ClothID CHAR(5) FOREIGN KEY REFERENCES ClothDetail(ClothID),
	TransactionDate DATE,
	Quantity INT NOT NULL
)

CREATE TABLE SalesDetail(
	SalesID CHAR(5) FOREIGN KEY REFERENCES SalesTransaction(SalesID),
	ClothID CHAR(5) FOREIGN KEY REFERENCES ClothDetail(ClothID),
	Quantity INT NOT NULL
)

CREATE TABLE PurchaseDetail(
	PurchaseID CHAR(5) FOREIGN KEY REFERENCES PurchaseTransaction(PurchaseID),
	MaterialID CHAR(5) FOREIGN KEY REFERENCES MaterialDetail(MaterialID),
	Quantity INT NOT NULL
)