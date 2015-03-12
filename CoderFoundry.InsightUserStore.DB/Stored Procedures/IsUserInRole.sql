CREATE Procedure [Security].[IsUserInRole]
@userId int, @role nvarchar(50)
As

Select *
From [Security].[UserRoles] 
Where UserId=@userId AND RoleId = (SELECT RoleId From [Security].[Roles] Where Name=@role)

