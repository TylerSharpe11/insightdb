
CREATE TABLE [Security].[Accounts](
	[Id] [int] IDENTITY(1,1)  NOT NULL,
	[Household] uniqueidentifier NOT NULL,
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
AUTOPROC Insert,Select,Update,Delete [Security].[Accounts]
GO