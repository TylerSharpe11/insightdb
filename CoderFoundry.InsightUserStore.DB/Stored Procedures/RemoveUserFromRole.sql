CREATE Procedure [Security].[RemoveUserFromRole]
@userId int, @role nvarchar(50)
As

Delete 
From [Security].[UserRoles] 
Where UserId=@userId And RoleId=(SELECT Id From [Security].[Roles] Where Name=@role)

