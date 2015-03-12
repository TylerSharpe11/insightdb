
CREATE PROCEDURE [Security].[InsertInvitation]
	-- Add the parameters for the stored procedure here
	@fromuserid int,
	@toemail nvarchar(50)

AS


    -- Insert statements for procedure here
	Insert Into [Security].[Invitations] (FromUserId, ToEmail)
	Values(@fromuserid, @toemail)
