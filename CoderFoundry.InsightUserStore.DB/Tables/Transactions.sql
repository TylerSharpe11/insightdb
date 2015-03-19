
CREATE TABLE [Security].[Transactions](
	[Id] [int] IDENTITY(1,1)  NOT NULL,
	[AccountId] [int] NULL,
	[Amount] [nvarchar](50) NULL,
	[AbsAmount] [nvarchar](50) NULL,
	[ReconciledAmount] [nvarchar](50) NULL,
	[AbsReconiledAmount] [nvarchar](50) NULL,
	[Date] [smalldatetime] NULL,
	[Description] [nvarchar](50) NULL,
	[Updated] [smalldatetime] NULL,
	[UpdatedByUserId] [int] NULL,
	[CategoryId] [int] NULL)

GO

ALTER TABLE [Security].[Transactions]
ADD CONSTRAINT [PK_Security.Transactions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
GO

ALTER TABLE [Security].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Accounts] FOREIGN KEY([AccountId])
REFERENCES [Security].[Accounts] ([Id])
GO

ALTER TABLE [Security].[Transactions] CHECK CONSTRAINT [FK_Transactions_Accounts]
GO

ALTER TABLE [Security].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Categories] FOREIGN KEY([CategoryId])
REFERENCES [Security].[Categories] ([Id])
GO

ALTER TABLE [Security].[Transactions] CHECK CONSTRAINT [FK_Transactions_Categories]
GO
AUTOPROC Insert,Select,Update,Delete [Security].[Transactions]
