use AdventureWorks_DWH
go

if exists (select * from sys.tables
			where name = 'Dim_Customers')
	drop table Dim_Customers
go


create table Dim_Customers(	

Custome_Key			int not null identity(1,1) primary key, 
CustomerID			int not null,
Custome_Name		nvarchar(150),
AddressLine1		nvarchar(60)not null,
AddressLine2		nvarchar(60),
City				nvarchar(30)not null,
PhoneNumber			nvarchar(25),
Start_Date			datetime not null default(getdate()),
End_Date			datetime,
is_current			tinyint not null default(1) ,
Source_System_Code	tinyint not null,
)


-- create non clusterd index on ProductID (PK) to Simplify the search process 
CREATE INDEX Dim_Customers_CustomerID
ON Dim_Customers(CustomerID);



CREATE INDEX Dim_Customers_City
ON Dim_Customers(City);

