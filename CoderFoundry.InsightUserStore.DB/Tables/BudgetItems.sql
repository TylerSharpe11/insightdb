
CREATE TABLE [Security].[BudgetItems](
	[Id] [int] IDENTITY(1,1)  NOT NULL,
	[Household] uniqueidentifier NOT NULL,
	[CategoryId] [int] NULL,
	[Amount] [nvarchar](50) NULL,
	[AnnualFrequency] [int] NULL)


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
AUTOPROC Insert,Select,Update,Delete [Security].[BudgetItems]
GO

