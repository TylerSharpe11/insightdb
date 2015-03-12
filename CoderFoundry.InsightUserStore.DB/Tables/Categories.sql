
CREATE TABLE [Security].[Categories](
	[Id] [int] NOT NULL,
	[Household] uniqueidentifier default NEWID() NOT NULL,
	[Name] [nvarchar](50) NULL)


GO
ALTER TABLE [Security].[Categories]
ADD CONSTRAINT [PK_Security.Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
GO

