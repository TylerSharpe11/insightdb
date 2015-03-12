
CREATE PROCEDURE [Security].[GetCategoriesById]
	-- Add the parameters for the stored procedure here
	@id int


AS


    -- Insert statements for procedure here
	Select *
	From [Security].[Categories]
	Where Id=@id
