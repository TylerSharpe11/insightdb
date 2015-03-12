CREATE Procedure [Security].[FindUserByLogin]
@loginProvider nvarchar(128), @providerKey nvarchar(128)
As

Select u.*
From Security.Users As u
INNER JOIN Security.UserLogins AS l ON u.Id = l.UserId
Where (l.LoginProvider=@loginProvider) 
And (l.ProviderKey=@providerKey) 
