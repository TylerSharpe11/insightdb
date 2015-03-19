CREATE Procedure [Security].[GetUsersByHousehold]
@household uniqueidentifier
As

Select *
From [Security].[Users] 
Where Household=@household
