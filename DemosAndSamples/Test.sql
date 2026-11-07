Use Pubs;

-- Sales data
Select * From Sales;
Select * From Stores;


Select * 
From Sales Join Stores
  On Sales.stor_id = Stores.stor_id

Select * 
From Stores Join Sales
  On Sales.stor_id = Stores.stor_id          

-- Only the matching data
Select * 
From Titles Inner Join publishers
  On Titles.pub_id = publishers.pub_id         

Select title, pub_name, title_id, publishers.pub_id 
From Titles Inner Join publishers
  On Titles.pub_id = publishers.pub_id    


Select * From publishers

-- Get all matching AND un-matching publisher data
Select title, pub_name, title_id, publishers.pub_id 
From Titles Right Outer Join publishers
  On Titles.pub_id = publishers.pub_id 

Select title, pub_name, title_id, publishers.pub_id 
From publishers Left Outer Join Titles
  On Titles.pub_id = publishers.pub_id       

Select title, pub_name, title_id, publishers.pub_id 
From publishers Full Outer Join Titles
  On Titles.pub_id = publishers.pub_id       


-- Matching AND all non-matching combonations
Select title, pub_name, title_id, publishers.pub_id 
From publishers Cross Join Titles
--  On Titles.pub_id = publishers.pub_id    

Select * From titles
Select * From publishers

-- Ingredents
[pub_name][title][qty]
[dbo].[publishers]  
[dbo].[titles] On [pub_id]
[dbo].[sales] On [title_id]


p.[pub_name], t.[title], s.[qty]
[dbo].[publishers] as p  
[dbo].[titles] as t On p.[pub_id] = t.[pub_id ]
[dbo].[sales] as s On t.[title_id] = s.[title_id]


Select p.[pub_name], t.[title], s.[qty]
From [dbo].[publishers] as p  
Join [dbo].[titles] as t On p.[pub_id] = t.[pub_id]
Join [dbo].[sales] as s On t.[title_id] = s.[title_id]


Select p.[pub_name], t.[title], Sum(s.[qty]) as TotalQty
From [dbo].[publishers] as p  
 Join [dbo].[titles] as t On p.[pub_id] = t.[pub_id]
 Join [dbo].[sales] as s On t.[title_id] = s.[title_id]
GROUP BY p.[pub_name], t.[title]
Order By p.[pub_name], t.[title]


Use Northwind

Select * From Employees

Select ReportsTo as MgrID, * From Employees