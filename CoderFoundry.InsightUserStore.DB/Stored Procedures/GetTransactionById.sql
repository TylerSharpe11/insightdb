
CREATE PROCEDURE [Security].[GetTransactionById]
	-- Add the parameters for the stored procedure here
	@id int


AS

    -- Insert statements for procedure here
	Select *
	From [Security].[Transactions] 
	Where Id=@id
