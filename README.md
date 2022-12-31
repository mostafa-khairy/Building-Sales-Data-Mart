# Building-Sales-Data-Mart
Building Sales Data Mart Using SSIS 

# General Info
* What is a data mart?

A data mart is a subset of a data warehouse focused on a particular line of business, department, or subject area. Data marts make specific data available to a defined group of users, which allows those users to quickly access critical insights without wasting time.

* Full load

Loading the entire data for the first time in the data mart

* Slowly Changing Dimension (SCD)

dimension that stores and manages both current and historical data over time

# Introduction

extract data from AdventureWorks2017 database (OLTP), create star schema then load data after applying the transformation  


# Data Sources

[AdventureWorks](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms)

# Tools
1. SQL Server instance
2. SSIS


# Steps 

1. Data Modeling (Star Schema)
![image](https://user-images.githubusercontent.com/87584678/210148893-ac63b762-fcb7-4414-8db0-4c7b06954aa7.png)

2. Slowly Changing Dimension (SCD)

![image](https://user-images.githubusercontent.com/87584678/210149005-db3775b6-c3e7-4415-a518-a5f3d2a8b7b6.png)











