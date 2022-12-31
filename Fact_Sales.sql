use AdventureWorks_DWH ;

if exists (select * from sys.tables
			where name = 'Fact_Sales')
drop table Fact_Sales ;


create table Fact_Sales
(
	Product_Key int not null,
	Custome_Key int not null,
	Territory_Key int not null, 
	Order_Date_Key int not null,
	Sales_Order_id VARCHAR(50) NOT NULL,
	Line_Number    INT NOT NULL,
	OrderQty	int,
	UnitPrice	money,
	Unit_Cost	money,
	Total_Price	money,
	Total_Cost	money,
	TaxAmt	money,
	Freight	money,
	Created_at	datetime not null default(getdate())
    
	CONSTRAINT PK_Fact_Sales PRIMARY KEY (Sales_Order_id, Line_Number)
	CONSTRAINT FK_Fact_Sales_Dim_Product FOREIGN key (Product_Key) references Dim_Product(Product_Key),
	CONSTRAINT FK_Fact_Sales_Dim_Customer FOREIGN key (Custome_Key) references Dim_Customer(Custome_Key),
	CONSTRAINT FK_Fact_Sales_Dim_Territory  FOREIGN key (Territory_Key) references Dim_Territory(Territory_Key),
	CONSTRAINT FK_Fact_Sales_Dim_Date FOREIGN key (Order_Date_Key) references Dim_Date(Date_Key)
)



CREATE INDEX fact_sales_dim_product  ON FactSales(product_key);