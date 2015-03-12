
-- =============================================
CREATE PROCEDURE  [Security].[InsertCategory]
	-- Add the parameters for the stored procedure here
	@household nvarchar(50),
	@name nvarchar(50)
AS


    -- Insert statements for procedure here
	Insert Into [Security].[Categories] (Household, Name)
	Values(@household, @name)

