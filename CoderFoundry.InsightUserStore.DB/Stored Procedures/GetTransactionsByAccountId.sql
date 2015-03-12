
CREATE PROCEDURE [Security].[GetTransactionsByAccountId]
	-- Add the parameters for the stored procedure here
	@accountid int


AS

	Select *
	From [Security].[Transactions]
	Where AccountId=@accountid
