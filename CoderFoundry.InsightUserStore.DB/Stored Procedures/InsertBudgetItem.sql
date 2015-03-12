
CREATE PROCEDURE [Security].[InsertBudgetItem]
	-- Add the parameters for the stored procedure here
	@household nvarchar(50),
	@categoryid int,
	@amount nvarchar(50)
AS

    -- Insert statements for procedure here
	Insert Into [Security].[BudgetItems] (Household, CategoryId, Amount)
	Values(@household, @categoryid, @amount)
