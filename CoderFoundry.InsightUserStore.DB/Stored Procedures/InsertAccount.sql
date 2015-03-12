
CREATE PROCEDURE [Security].[InsertAccount]
	-- Add the parameters for the stored procedure here
	@household nvarchar(50),
	@name nvarchar(50),
	@balance nvarchar(50),
	@reconciledbalance nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert Into [Security].[Accounts] (Household, Name, Balance, ReconciledBalance)
	Values(@household, @name, @balance, @reconciledbalance)
END