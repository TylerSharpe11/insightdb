
CREATE TABLE [Security].[Accounts](
	[Id] [int] NOT NULL,
	[Household] uniqueidentifier default NEWID() NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Balance] [money] NULL,
	[ReconciledBalance] [money] NULL)

GO

ALTER TABLE [Security].[Accounts]
ADD CONSTRAINT [PK_Security.Accounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
GO