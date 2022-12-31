use master
go 

if db_id('AdventureWorks_DWH') is not null 
drop database AdventureWorks_DWH;

create database AdventureWorks_DWH;
go