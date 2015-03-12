CREATE Procedure [Security].[GetUserLoginsByUserId]
@id int
As

Select *
From [Security].[UserLogins] 
Where UserId=@id
