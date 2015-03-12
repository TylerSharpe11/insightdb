
CREATE PROCEDURE [Security].[InsertTransaction]
	-- Add the parameters for the stored procedure here
	@accountid int,
	@amount nvarchar(50),
	@absamount nvarchar(50),
	@reconciledamount nvarchar(50),
	@absreconciledamount nvarchar(50),
	@date smalldatetime,
	@description nvarchar(50),
	@updated smalldatetime,
	@updatedbyuserid int,
	@categoryid int

AS


    -- Insert statements for procedure here
	Insert Into [Security].[Transactions] (AccountId, Amount, AbsAmount, ReconciledAmount, AbsReconiledAmount, Date, Description, Updated, UpdatedByUserId, CategoryId)
	Values(@accountid, @amount, @absamount, @reconciledamount, @absreconciledamount, @date, @description, @updated, @updatedbyuserid, @categoryid)
