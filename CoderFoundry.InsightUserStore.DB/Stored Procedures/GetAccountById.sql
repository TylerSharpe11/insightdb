-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in

CREATE PROCEDURE [Security].[GetAccountById]
	-- Add the parameters for the stored procedure here
	@id int


AS

	Select *
	From [Security].[Accounts]
	Where Id=@id
