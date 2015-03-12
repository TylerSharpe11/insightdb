CREATE Procedure [Security].[GetRolesForUser]
@userId int
As

Select r.[Name]
From [Security].[UserRoles] As ur
INNER JOIN [Security].[Roles] r on r.[Id] = ur.[RoleId]
Where ur.[UserId] = @userId
