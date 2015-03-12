CREATE Procedure [Security].[GetLoginsForUser]
@email nvarchar(128)
As

Select *
From [Security].[Users] 
Where Email=@email
