
CREATE PROCEDURE [Security].[GetAccountsByHousehold]
	-- Add the parameters for the stored procedure here
	@household nvarchar(50)


AS


    -- Insert statements for procedure here
	Select *
	From [Security].[Accounts]
	Where Household=@household
