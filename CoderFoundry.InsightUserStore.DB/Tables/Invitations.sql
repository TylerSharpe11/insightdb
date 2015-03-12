
CREATE TABLE [Security].[Invitations](
	[Id] [int] NOT NULL,
	[FromUserId] [int] NULL,
	[ToEmail] [nvarchar](50) NULL)


GO
ALTER TABLE [Security].[Invitations]
ADD CONSTRAINT [PK_Security.Invitations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
GO

