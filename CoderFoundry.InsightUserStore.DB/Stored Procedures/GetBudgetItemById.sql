
CREATE PROCEDURE [Security].[GetBudgetItemById]
	-- Add the parameters for the stored procedure here
	@id int


AS


    -- Insert statements for procedure here
	Select *
	From [Security].[BudgetItems]
	Where Id=@id
