use AdventureWorks_DWH
go

if exists (select * from sys.tables
			where name = 'Dim_Product')
	drop table Dim_Product
go


create table Dim_Product (		
Product_Key			int		not null   identity(1,1) primary key,   -- Surrogate Key
ProductID			int	 not null,			   			   	        -- business key
Product_Name		nvarchar(50),
Product_Discription	nvarchar(400),	
Product_Model		nvarchar(50),	
Product_SubCategory	nvarchar(50),	
Product_Category	nvarchar(50),	
Color				nvarchar(15),	
ReorderPoint		smallint,	
StandardCost		money,	
Start_Date			datetime  not null default(getdate()),	
End_Date			datetime,	
is_current			tinyint not null default (1),
Source_System_Code	tinyint not null	
)

-- create non clusterd index on ProductID (PK) to Simplify the search process 
CREATE INDEX Dim_Product_ProductID
ON Dim_Product(ProductID);

