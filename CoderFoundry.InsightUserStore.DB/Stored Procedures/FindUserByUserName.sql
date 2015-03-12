CREATE Procedure [Security].[FindUserByUserName]
@userName nvarchar(128)
As

Select *
From [Security].[Users] 
Where UserName=@userName
