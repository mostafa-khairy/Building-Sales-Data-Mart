use AdventureWorks_DWH ;

if exists (select * from sys.tables
			where name = 'Dim_Date')
drop table Dim_Date ;



create table Dim_Date
(
	Date_Key			int primary key, 
	Full_Date 			Date not null,
	Calendar_Year 		int not null,
	Calendar_Quarter	int not null,
	Month_Num			int not null,
	Month_Name			NVARCHAR(50)
)