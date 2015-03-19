
CREATE TABLE [Security].[Categories](
	[Id] [int] IDENTITY(1,1)  NOT NULL,
	[Household] uniqueidentifier NOT NULL,
	[Name] [nvarchar](50) NULL)


GO
ALTER TABLE [Security].[Categories]
ADD CONSTRAINT [PK_Security.Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
GO
AUTOPROC Insert,Select,Update,Delete [Security].[Categories]
GO
