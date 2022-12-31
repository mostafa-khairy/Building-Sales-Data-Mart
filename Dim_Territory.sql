use AdventureWorks_DWH ;

if exists (select * from sys.tables
			where name = 'Dim_Territory')
drop table Dim_Territory ;

create table Dim_Territory
(
	Territory_Key			int identity(1,1) primary key,
	TerritoryID				int not null,
	Territory_Name			nvarchar(50),
	Territory_Country_Name	nvarchar(50),
	Territory_Group			nvarchar(50),
	Start_Date				datetime not null default(getdate()),	
	End_Date				datetime,	
	is_current				tinyint not null default (1),
	Source_System_Code		tinyint not null
)















