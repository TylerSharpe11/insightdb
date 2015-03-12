CREATE Procedure [Security].[AddUserToRole]
@userId int, @role nvarchar(50)
As
Insert Into [Security].[UserRoles] (UserId, RoleId)

Select @userId, r.Id
From [Security].[Roles] r
Where r.Name=@role

Select convert(BIT, CASE @@ROWCOUNT
	WHEN 0 THEN 0
	ELSE 1
	END)