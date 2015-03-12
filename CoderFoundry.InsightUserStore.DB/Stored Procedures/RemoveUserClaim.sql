CREATE Procedure [Security].[RemoveUserClaim]
@Id int
As

Delete 
From [Security].[UserClaims] 
Where Id=@Id

