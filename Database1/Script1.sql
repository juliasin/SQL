USE     master;
GO
IF      DB_ID('test')
        IS NOT NULL
        DROP DATABASE test;
GO
CREATE  DATABASE test;
GO
USE     test;

CREATE TABLE test.dbo.Companies (
ID INT NOT NULL Primary key, 
Name NVARCHAR(25) NOT NULL,  
CompanyAddress NVARCHAR(25) NOT NULL);

CREATE TABLE test.dbo.PhoneNumbers (
ID INT NOT NULL Primary key, 
PhoneNumber CHAR(25) NOT NULL,  
EmployeeID int NOT NULL);

CREATE TABLE test.dbo.Employees (
ID INT NOT NULL Primary key, 
Name NVARCHAR(25) NOT NULL, 
Surname NVARCHAR(25) NOT NULL, 
BirthDate DATE NOT NULL, 
HomeAddress NVARCHAR(25) NOT NULL,
IDPhone INT NOT NULL,
IDCompany INT NOT NULL,
CONSTRAINT fkeyCompany FOREIGN KEY (IDCompany)
		REFERENCES Companies (ID),
CONSTRAINT fkeyPhone FOREIGN KEY (IDPhone)
		REFERENCES PhoneNumbers (ID));



