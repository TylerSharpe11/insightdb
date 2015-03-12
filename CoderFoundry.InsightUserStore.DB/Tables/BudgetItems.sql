
CREATE TABLE [Security].[BudgetItems](
	[Id] [int] NOT NULL,
	[Household] uniqueidentifier default NEWID() NOT NULL,
	[CategoryId] [int] NULL,
	[Amount] [nvarchar](50) NULL)

GO
ALTER TABLE [Security].[BudgetItems]
ADD CONSTRAINT [PK_Security.BudgetItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
GO

ALTER TABLE [Security].[BudgetItems]  WITH CHECK ADD  CONSTRAINT [FK_BudgetItems_Categories] FOREIGN KEY([CategoryId])
REFERENCES [Security].[Categories] ([Id])
GO

ALTER TABLE [Security].[BudgetItems] CHECK CONSTRAINT [FK_BudgetItems_Categories]
GO

