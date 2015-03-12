CREATE Procedure [Security].[GetUserClaims]
@userId nvarchar(128)
As

Select *
From [Security].[UserClaims] 
Where UserId=@userId
